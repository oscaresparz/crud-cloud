-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2022 a las 17:19:00
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formulario_combinado`
--
CREATE DATABASE IF NOT EXISTS `formulario_combinado` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `formulario_combinado`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `co` varchar(10) NOT NULL,
  `sex` varchar(15) NOT NULL,
  `serv` varchar(15) NOT NULL,
  `depto` varchar(20) NOT NULL,
  `men` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`co`, `sex`, `serv`, `depto`, `men`) VALUES
('a1b2c3d4', 'Femenino', 'Software', 'Personal', 'Hola XD'),
('eses121', 'Masculino', 'Hardware', 'Personal', 'Intel Core I5'),
('7w7', 'Femenino', 'Software', 'Publicidad', 'Cheems'),
('1005235506', 'Masculino', 'Hardware', 'Publicidad', 'Artes Marciales'),
('Mary564', 'Femenino', 'Software', 'Publicidad', 'Impresora'),
('Ani454', 'Femenino', 'Hardware', 'Personal', 'Cuestionario Rutinario'),
('Jenny343', 'Femenino', 'Hardware', 'Publicidad', 'IMPRESORA EPSON HP'),
('John', 'Masculino', 'Software', 'Personal', 'SO Win 10 pro'),
('Bobby123', 'Masculino', 'Software', 'Ventas', 'Marketing Digital'),
('777XD', 'Masculino', 'Software', 'Personal', 'Minecraft XD');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
