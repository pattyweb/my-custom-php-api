<?php
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Origin: https://yourfrontendpage.com");
header("Access-Control-Allow-Credentials: true");
header("Access-Control-Allow-Methods: GET, POST, PUT, PATCH, DELETE, OPTIONS");

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    // This is a preflight request, respond with 200 OK status
    exit();
}

$db_host = "localhost";
$db_user = "your-db-user";
$db_password = "password";
$db_name = "your-db-name";

// Attempt to establish a connection
$conn = mysqli_connect($db_host, $db_user, $db_password, $db_name);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Handle POST request to add new user
        $data = json_decode(file_get_contents('php://input'), true);
        $name = mysqli_real_escape_string($conn, $data['name']);
        $email = mysqli_real_escape_string($conn, $data['email']);
        $sql = "INSERT INTO users (name, email) VALUES ('$name', '$email')";
        if (mysqli_query($conn, $sql)) {
            http_response_code(201);
            echo json_encode(array("message" => "Data added successfully"));
        } else {
            http_response_code(500);
            echo json_encode(array("message" => "Error adding data: " . mysqli_error($conn)));
        }
    } elseif ($_SERVER['REQUEST_METHOD'] === 'GET') {
        // Handle GET request to fetch all users
        $sql = "SELECT * FROM users";
        $result = mysqli_query($conn, $sql);
        if ($result) {
            header("Content-Type: JSON");
            $response = array();
            while ($row = mysqli_fetch_assoc($result)) {
                $response[] = $row;
            }
            echo json_encode($response, JSON_PRETTY_PRINT);
        } else {
            echo "Error: " . mysqli_error($conn);
        }
    } elseif ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
        // Handle DELETE request to delete a user
        $user_id = mysqli_real_escape_string($conn, $_GET['id']);
        $sql = "DELETE FROM users WHERE id = '$user_id'";
        if (mysqli_query($conn, $sql)) {
            http_response_code(200);
            echo json_encode(array("message" => "User deleted successfully"));
        } else {
            http_response_code(500);
            echo json_encode(array("message" => "Error deleting user: " . mysqli_error($conn)));
        }
    } elseif ($_SERVER['REQUEST_METHOD'] === 'PUT') {
        // Handle PUT request to update a user
        $data = json_decode(file_get_contents('php://input'), true);
        $user_id = mysqli_real_escape_string($conn, $data['id']);
        $name = mysqli_real_escape_string($conn, $data['name']);
        $email = mysqli_real_escape_string($conn, $data['email']);
        $sql = "UPDATE users SET name='$name', email='$email' WHERE id='$user_id'";
        if (mysqli_query($conn, $sql)) {
            http_response_code(200);
            echo json_encode(array("message" => "User updated successfully"));
        } else {
            http_response_code(500);
            echo json_encode(array("message" => "Error updating user: " . mysqli_error($conn)));
        }
    }

    // Close the database connection
    mysqli_close($conn);
}
?>
