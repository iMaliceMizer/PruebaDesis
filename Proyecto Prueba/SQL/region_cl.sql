-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-02-2023 a las 06:30:29
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `regiones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region_cl`
--

CREATE TABLE `region_cl` (
  `id_re` int(11) NOT NULL COMMENT 'ID unico',
  `str_descripcion` varchar(60) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Lista de regiones de Chile';

--
-- Volcado de datos para la tabla `region_cl`
--

INSERT INTO `region_cl` (`id_re`, `str_descripcion`) VALUES
(1, 'ARICA Y PARINACOTA'),
(2, 'TARAPACÁ'),
(3, 'ANTOFAGASTA'),
(4, 'ATACAMA'),
(5, 'COQUIMBO'),
(6, 'VALPARAÍSO'),
(7, 'DEL LIBERTADOR GRAL. BERNARDO OHIGGINS'),
(8, 'DEL MAULE 	VII'),
(9, 'DEL BIOBÍO 	VIII'),
(10, 'DE LA ARAUCANÍA'),
(11, 'DE LOS RÍOS'),
(12, 'DE LOS LAGOS'),
(13, 'AISÉN DEL GRAL. CARLOS IBAÑEZ DEL CAMPO'),
(14, 'MAGALLANES Y DE LA ANTÁRTICA CHILENA'),
(15, 'METROPOLITANA DE SANTIAGO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `region_cl`
--
ALTER TABLE `region_cl`
  ADD PRIMARY KEY (`id_re`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
