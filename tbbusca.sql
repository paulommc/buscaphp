-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2023 at 10:17 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbbusca`
--

CREATE TABLE `tbbusca` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbbusca`
--

INSERT INTO `tbbusca` (`id`, `nome`, `idade`) VALUES
(1, 'Lucas', 25),
(2, 'Carla', 33),
(3, 'Gustavo', 42),
(4, 'Aline', 19),
(5, 'Rafael', 57),
(6, 'Juliana', 31),
(7, 'Felipe', 22),
(8, 'Mariana', 45),
(9, 'Pedro', 27),
(10, 'Camila', 39),
(11, 'Diego', 23),
(12, 'Beatriz', 54),
(13, 'Fernando', 20),
(14, 'Sara', 43),
(15, 'Marcelo', 36),
(16, 'Bruna', 29),
(17, 'Thiago', 28),
(18, 'Patrícia', 47),
(19, 'Rodrigo', 21),
(20, 'Isabela', 30),
(21, 'Ricardo', 41),
(22, 'Ana', 51),
(23, 'Henrique', 18),
(24, 'Amanda', 35),
(25, 'João', 49),
(26, 'Larissa', 24),
(27, 'Leonardo', 46),
(28, 'Vanessa', 58),
(29, 'Luciana', 32),
(30, 'Tiago', 50),
(31, 'Renata', 38),
(32, 'Luiz', 26),
(33, 'Leticia', 44),
(34, 'Guilherme', 37),
(35, 'Caroline', 55),
(36, 'Alexandre', 34),
(37, 'Laura', 60),
(38, 'Vitor', 48),
(39, 'Jéssica', 53),
(40, 'Hugo', 59),
(41, 'Raquel', 40),
(42, 'Marcela', 52),
(43, 'Vinicius', 56),
(44, 'Mirella', 63),
(45, 'Eduardo', 62),
(46, 'Natalia', 61),
(47, 'Luciano', 64),
(48, 'Camilo', 65);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbbusca`
--
ALTER TABLE `tbbusca`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbbusca`
--
ALTER TABLE `tbbusca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
