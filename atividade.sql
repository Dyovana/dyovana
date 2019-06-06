-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 06-Jun-2019 às 01:32
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `atividade`
--
CREATE DATABASE IF NOT EXISTS `atividade` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `atividade`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividade_banco`
--

CREATE TABLE IF NOT EXISTS `atividade_banco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `idade` text NOT NULL,
  `genero` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `atividade_banco`
--

INSERT INTO `atividade_banco` (`id`, `nome`, `idade`, `genero`) VALUES
(1, 'Dyovana', '18', 'F'),
(10, 'Roberta', '18', 'F');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
