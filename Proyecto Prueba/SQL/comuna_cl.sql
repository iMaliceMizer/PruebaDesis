-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-02-2023 a las 06:26:32
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
-- Estructura de tabla para la tabla `comuna_cl`
--

CREATE TABLE `comuna_cl` (
  `id_co` int(11) NOT NULL,
  `str_descripcion` varchar(255) NOT NULL,
  `id_re` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comuna_cl`
--

INSERT INTO `comuna_cl` (`id_co`, `str_descripcion`, `id_re`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'Putre', 2),
(4, 'General Lagos', 2),
(5, 'Iquique', 3),
(6, 'Alto Hospicio', 3),
(7, 'Pozo Almonte', 2),
(8, 'Camiña', 2),
(9, 'Colchane', 2),
(10, 'Huara', 2),
(11, 'Pica', 2),
(12, 'Antofagasta', 3),
(13, 'Mejillones', 3),
(14, 'Sierra Gorda', 3),
(15, 'Taltal', 3),
(16, 'Calama', 4),
(17, 'Ollagüe', 4),
(18, 'San Pedro de Atacama', 4),
(19, 'Tocopilla', 3),
(20, 'Chañaral', 4),
(21, 'Diego de Almagro', 4),
(22, 'Copiapó', 4),
(23, 'Caldera', 4),
(24, 'Tierra Amarilla', 4),
(25, 'Vallenar', 5),
(26, 'Alto del Carmen', 5),
(27, 'Freirina', 5),
(28, 'Huasco', 5),
(29, 'La Serena', 5),
(30, 'Coquimbo', 5),
(31, 'Andacollo', 5),
(32, 'La Higuera', 5),
(33, 'Paihuano', 5),
(34, 'Vicuña', 5),
(35, 'Illapel', 5),
(36, 'Canela', 5),
(37, 'Los Vilos', 5),
(38, 'Salamanca', 5),
(39, 'Ovalle', 5),
(40, 'Combarbalá', 5),
(41, 'Monte Patria', 5),
(42, 'Punitaqui', 5),
(43, 'Río Hurtado', 5),
(44, 'Valparaíso', 6),
(45, 'Viña del Mar', 6),
(46, 'Concón', 6),
(47, 'Quintero', 6),
(48, 'Puchuncaví', 6),
(49, 'Casablanca', 6),
(50, 'Juan Fernández', 6),
(51, 'Isla de Pascua', 6),
(52, 'Los Andes', 6),
(53, 'Calle Larga', 6),
(54, 'Rinconada', 6),
(55, 'San Esteban', 6),
(56, 'La Ligua', 5),
(57, 'Cabildo', 5),
(58, 'Papudo', 5),
(59, 'Petorca', 5),
(60, 'Zapallar', 5),
(61, 'Quillota', 6),
(62, 'La Calera', 6),
(63, 'Hijuelas', 6),
(64, 'Nogales', 6),
(65, 'San Antonio', 6),
(66, 'Algarrobo', 6),
(67, 'Cartagena', 6),
(68, 'El Quisco', 6),
(69, 'El Tabo', 6),
(70, 'Santo Domingo', 6),
(71, 'San Felipe', 6),
(72, 'Catemu', 6),
(73, 'Llay-Llay', 6),
(74, 'Panquehue', 6),
(75, 'Putaendo', 6),
(76, 'Santa María', 6),
(77, 'Rancagua', 7),
(78, 'Codegua', 7),
(79, 'Coinco', 7),
(80, 'Coltauco', 7),
(81, 'Doñihue', 7),
(82, 'Graneros', 7),
(83, 'Las Cabras', 7),
(84, 'Machalí', 7),
(85, 'Malloa', 7),
(86, 'Mostazal', 7),
(87, 'Olivar', 7),
(88, 'Peumo', 7),
(89, 'Pichidegua', 7),
(90, 'Quinta de Tilcoco', 7),
(91, 'Rancagua', 7),
(92, 'Rengo', 7),
(93, 'Requínoa', 7),
(94, 'San Fernando', 7),
(95, 'San Francisco de Mostazal', 7),
(96, 'San Vicente de Tagua Tagua', 7),
(97, 'Santa Cruz', 7),
(98, 'Cauquenes', 8),
(99, 'Colbún', 8),
(100, 'Constitución', 8),
(101, 'Curicó', 8),
(102, 'Hualañé', 8),
(103, 'Licantén', 8),
(104, 'Linares', 8),
(105, 'Longaví', 8),
(106, 'Maule', 8),
(107, 'Molina', 8),
(108, 'Parral', 8),
(109, 'Pelarco', 8),
(110, 'Pencahue', 8),
(111, 'Rauco', 8),
(112, 'Retiro', 8),
(113, 'Río Claro', 8),
(114, 'Romeral', 8),
(115, 'Sagrada Familia', 8),
(116, 'San Clemente', 8),
(117, 'San Javier', 8),
(118, 'San Rafael', 8),
(119, 'Talca', 8),
(120, 'Teno', 8),
(121, 'Vichuquén', 8),
(122, 'Arauco', 9),
(123, 'Bulnes', 9),
(124, 'Cabrero', 9),
(125, 'Cañete', 9),
(126, 'Chiguayante', 9),
(127, 'Chillán', 9),
(128, 'Chillán Viejo', 9),
(129, 'Cobquecura', 9),
(130, 'Coelemu', 9),
(131, 'Coihueco', 9),
(132, 'Concepción', 9),
(133, 'Contulmo', 9),
(134, 'Coronel', 9),
(135, 'Curanilahue', 9),
(136, 'El Carmen', 9),
(137, 'Florida', 9),
(138, 'Hualpén', 9),
(139, 'Hualqui', 9),
(140, 'Laja', 9),
(141, 'Lebu', 9),
(142, 'Los Álamos', 9),
(143, 'Los Ángeles', 9),
(144, 'Lota', 9),
(145, 'Mulchén', 9),
(146, 'Nacimiento', 9),
(147, 'Negrete', 9),
(148, 'Ninhue', 9),
(149, 'Ñiquén', 9),
(150, 'Pemuco', 9),
(151, 'Penco', 9),
(152, 'Pinto', 9),
(153, 'Portezuelo', 9),
(154, 'Quilaco', 9),
(155, 'Quilleco', 9),
(156, 'Quillón', 9),
(157, 'Quirihue', 9),
(158, 'Ránquil', 9),
(159, 'San Carlos', 9),
(160, 'San Fabián', 9),
(161, 'San Ignacio', 9),
(162, 'San Nicolás', 9),
(163, 'San Pedro de la Paz', 9),
(164, 'San Rosendo', 9),
(165, 'Santa Bárbara', 9),
(166, 'Santa Juana', 9),
(167, 'Talcahuano', 9),
(168, 'Tirúa', 9),
(169, 'Tomé', 9),
(170, 'Treguaco', 9),
(171, 'Yumbel', 9),
(172, 'Negrete', 9),
(173, 'Nacimiento', 9),
(174, 'Alto Biobío', 9),
(175, 'Angol', 10),
(176, 'Collipulli', 10),
(177, 'Lonquimay', 10),
(178, 'Curacautín', 10),
(179, 'Victoria', 10),
(180, 'Pucón', 10),
(181, 'Lanco', 11),
(182, 'Paillaco', 11),
(183, 'Futrono', 11),
(184, 'Río Bueno', 11),
(185, 'Hualaihué', 12),
(186, 'Fresia', 12),
(187, 'Puerto Varas', 12),
(188, 'Chaitén', 13),
(189, 'Cisnes', 13),
(190, 'Cochrane', 13),
(191, 'O\'Higgins', 13),
(192, 'Aysén', 13),
(193, 'Río Verde', 14),
(194, 'San Gregorio', 14),
(195, 'Antártica', 14),
(196, 'Cerrillos', 15),
(197, 'Cerro Navia', 15),
(198, 'Conchalí', 15),
(199, 'El Bosque', 15),
(200, 'Estación Central', 15),
(201, 'Huechuraba', 15),
(202, 'Independencia', 15),
(203, 'La Cisterna', 15),
(204, 'La Florida', 15),
(205, 'La Granja', 15),
(206, 'La Pintana', 15),
(207, 'La Reina', 15),
(208, 'Las Condes', 15),
(209, 'Lo Barnechea', 15),
(210, 'Lo Espejo', 15),
(211, 'Lo Prado', 15),
(212, 'Macul', 15),
(213, 'Maipú', 15),
(214, 'Ñuñoa', 15),
(215, 'Pedro Aguirre Cerda', 15),
(216, 'Peñalolén', 15),
(217, 'Providencia', 15),
(218, 'Pudahuel', 15),
(219, 'Quilicura', 15),
(220, 'Quinta Normal', 15),
(221, 'Recoleta', 15),
(222, 'Renca', 15),
(223, 'San Joaquín', 15),
(224, 'San Miguel', 15),
(225, 'San Ramón', 15),
(226, 'Santiago', 15),
(227, 'Vitacura', 15),
(228, 'Lampa', 15),
(229, 'Tiltil', 15),
(230, 'San Bernardo', 15),
(231, 'Buin', 15),
(232, 'Paine', 15),
(233, 'Melipilla', 15),
(234, 'Alhué', 15),
(235, 'Curacaví', 15),
(236, 'María Pinto', 15),
(237, 'San Pedro', 15),
(238, 'Isla de Maipo', 15),
(239, 'El Monte', 15),
(240, 'Padre Hurtado', 15),
(241, 'Peñaflor', 15),
(242, 'Talagante', 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comuna_cl`
--
ALTER TABLE `comuna_cl`
  ADD PRIMARY KEY (`id_co`),
  ADD KEY `id_re` (`id_re`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comuna_cl`
--
ALTER TABLE `comuna_cl`
  MODIFY `id_co` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comuna_cl`
--
ALTER TABLE `comuna_cl`
  ADD CONSTRAINT `comuna_cl_ibfk_1` FOREIGN KEY (`id_re`) REFERENCES `region_cl` (`id_re`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
