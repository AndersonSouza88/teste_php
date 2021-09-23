-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Set-2021 às 04:31
-- Versão do servidor: 8.0.26
-- versão do PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste_anderson`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nome` text,
  `email` text,
  `telefone` varchar(250) DEFAULT NULL,
  `cidade` text,
  `uf` varchar(2) DEFAULT NULL,
  `categoria` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `cidade`, `uf`, `categoria`) VALUES
(1, 'Anderson Souza', 'anderctba88@gmail.com', '(41)1234-5678', 'Curitiba', 'PR', 'venda'),
(2, 'Bruce Wayne', 'i_am_batman@gmail.com', '(41)4567-5678', 'Curitiba', 'PR', 'venda'),
(3, 'Anakin Skywalker', 'vader@gmail.com', '(11)1234-3698', 'São Paulo', 'SP', 'aluguel'),
(4, 'Mary Jane', 'mary_jane_78@gmail.com', '(21)5534-5248', 'Rio de Janeiro', 'RJ', 'aluguel'),
(5, 'Hermione Granger', 'hermione.leviosa@hotmail.com', '(41)1234-5678', 'Curitiba', 'PR', 'venda'),
(6, 'Doc.Brown', 'delorean_brown@gmail.com', '(41)1234-5678', 'Blumenau', 'SC', 'aluguel'),
(7, 'Thomas A. Anderson', 'mr_anderson_neo@gmail.com', '(41)4567-5678', 'Curitiba', 'PR', 'venda'),
(8, 'Betty Boop', 'bettyboop@gmail.com', '(11)1234-3698', 'São Paulo', 'SP', 'aluguel'),
(9, 'Elfo Link', 'i_am_not_zelda@gmail.com', '(21)5534-5248', 'Rio de Janeiro', 'RJ', 'aluguel'),
(10, 'Ellen Ripley', 'ripley@hotmail.com', '(41)1234-5678', 'Curitiba', 'PR', 'venda'),
(11, 'James P.Sulley', 'sulley@gmail.com', '(41)1234-5678', 'Blumenau', 'SC', 'aluguel'),
(12, 'Optimus Prime', 'autobots_84@gmail.com', '(41)4567-5678', 'Curitiba', 'PR', 'venda'),
(13, 'Bilbo Baggins', 'thering@gmail.com', '(11)1234-3698', 'São Paulo', 'SP', 'aluguel'),
(14, 'Sarah Connor', 'sarah_connor@gmail.com', '(21)5534-5248', 'Rio de Janeiro', 'RJ', 'aluguel'),
(15, 'Amélie Poulain', 'poulain@hotmail.com', '(41)1234-5678', 'Curitiba', 'PR', 'venda'),
(16, 'Vito Corleone', 'the_godfather@gmail.com', '(47)1234-5678', 'Blumenau', 'SC', 'aluguel'),
(17, 'Obi-Wan Kenobi', 'hello_dare@gmail.com', '(41)4567-5678', 'Curitiba', 'PR', 'venda'),
(18, 'Ferris Bueller', 'ferris_86_bueller@gmail.com', '(11)1234-3698', 'São Paulo', 'SP', 'aluguel'),
(19, 'Leia Organa', 'i_love_you@gmail.com', '(21)5534-5248', 'Rio de Janeiro', 'RJ', 'aluguel'),
(20, 'Han Solo', 'i.know@hotmail.com', '(41)1234-5678', 'Curitiba', 'PR', 'venda'),
(21, 'Dorothy Gale', 'dorothy@gmail.com', '(41)1234-5678', 'Blumenau', 'SC', 'aluguel'),
(22, 'Katniss Everdeen', 'katniss@gmail.com', '(41)4567-5678', 'Curitiba', 'PR', 'venda');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
