-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 18/03/2024 às 04:29
-- Versão do servidor: 5.7.23-23
-- Versão do PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `patty658_react-api`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(2, 'Alice Smith', 'alicesmith-jones@example.com'),
(3, 'Bob Johnson', 'bjohnson@example.com'),
(4, 'Emily Brown', 'ebrown@example.com'),
(5, 'Michael Wilson', 'mwilson@example.com'),
(6, 'Sophia Jones', 'sjones@example.com'),
(7, 'Oliver Taylor', 'otaylor@example.com'),
(8, 'Emma Martinez', 'emartinez@example.com'),
(9, 'William Garcia', 'wgarcia@example.com'),
(10, 'Charlotte Brown', 'cbrown@example.com'),
(14, 'Ava Lopez', 'alopez@example.com'),
(15, 'Noah Perez', 'nperez@example.com'),
(16, 'Isabella Turner', 'iturner@example.com'),
(17, 'Ethan Moore', 'emoore@example.com'),
(18, 'Mia Hill', 'mhill@example.com'),
(19, 'Alexander Scott', 'ascott@example.com'),
(20, 'Harper Flores', 'hflores@example.com'),
(21, 'Evelyn Gonzales Thomas', 'egonzales@example.com'),
(22, 'Daniel Hernandez', 'dhernandez@example.com'),
(23, 'Sofia Martinez', 'smartinez@example.com'),
(24, 'Jackson Young', 'jyoung@example.com'),
(25, 'Amelia King', 'aking@example.com'),
(26, 'Henry Nelson', 'hnelson@example.com'),
(27, 'Charlotte Mitchell', 'cmitchell@example.com'),
(28, 'Lucas Perez', 'lperez@example.com'),
(29, 'Mia Green', 'mgreen@example.com'),
(30, 'Benjamin Carter', 'bcarter@example.com'),
(46, 'Olivia Rodriguez', 'olivia@example.com'),
(47, 'Liam Wilson', 'liam@example.com'),
(48, 'Elton John', 'elton@example.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
