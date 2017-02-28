-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2017 a las 18:31:09
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_voteit`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_notaalumno`
--

CREATE TABLE `tbl_notaalumno` (
  `na_id` int(11) NOT NULL,
  `na_nota` int(2) NOT NULL,
  `pa_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_notaalumno`
--

INSERT INTO `tbl_notaalumno` (`na_id`, `na_nota`, `pa_id`, `part_id`) VALUES
(75, 5, 1, 3),
(76, 5, 2, 3),
(77, 5, 1, 4),
(78, 5, 2, 4),
(79, 5, 1, 3),
(80, 5, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_notatribunal`
--

CREATE TABLE `tbl_notatribunal` (
  `nt_id` int(11) NOT NULL,
  `nt_nota` int(2) NOT NULL,
  `pt_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_notatribunal`
--

INSERT INTO `tbl_notatribunal` (`nt_id`, `nt_nota`, `pt_id`, `part_id`) VALUES
(1, 5, 1, 1),
(2, 5, 2, 1),
(3, 5, 3, 1),
(4, 5, 4, 1),
(5, 5, 1, 2),
(6, 5, 2, 2),
(7, 5, 3, 2),
(8, 5, 4, 2),
(9, 5, 1, 1),
(10, 5, 2, 1),
(11, 5, 1, 1),
(12, 5, 2, 1),
(13, 5, 3, 1),
(14, 5, 4, 1),
(15, 5, 1, 2),
(16, 5, 2, 2),
(17, 5, 3, 2),
(18, 5, 4, 2),
(19, 5, 1, 1),
(20, 5, 2, 1),
(21, 5, 1, 1),
(22, 5, 2, 1),
(23, 5, 3, 1),
(24, 5, 4, 1),
(25, 5, 1, 2),
(26, 5, 2, 2),
(27, 5, 3, 2),
(28, 5, 4, 2),
(29, 5, 1, 1),
(30, 5, 2, 1),
(31, 5, 3, 1),
(32, 5, 4, 1),
(33, 5, 1, 2),
(34, 5, 2, 2),
(35, 5, 3, 2),
(36, 5, 4, 2),
(37, 5, 1, 1),
(38, 5, 2, 1),
(39, 5, 3, 1),
(40, 5, 4, 1),
(41, 5, 1, 2),
(42, 5, 2, 2),
(43, 5, 3, 2),
(44, 5, 4, 2),
(45, 5, 1, 1),
(46, 5, 2, 1),
(47, 5, 3, 1),
(48, 5, 4, 1),
(49, 5, 1, 2),
(50, 5, 2, 2),
(51, 5, 3, 2),
(52, 5, 4, 2),
(53, 5, 1, 1),
(54, 5, 2, 1),
(55, 5, 3, 1),
(56, 5, 4, 1),
(57, 5, 1, 2),
(58, 5, 2, 2),
(59, 5, 3, 2),
(60, 5, 4, 2),
(61, 5, 1, 1),
(62, 5, 2, 1),
(63, 5, 3, 1),
(64, 5, 4, 1),
(65, 5, 1, 2),
(66, 5, 2, 2),
(67, 5, 3, 2),
(68, 5, 4, 2),
(69, 5, 1, 1),
(70, 5, 2, 1),
(71, 5, 3, 1),
(72, 5, 4, 1),
(73, 5, 1, 2),
(74, 5, 2, 2),
(75, 5, 3, 2),
(76, 5, 4, 2),
(77, 5, 1, 1),
(78, 5, 2, 1),
(79, 5, 3, 1),
(80, 5, 4, 1),
(81, 5, 1, 2),
(82, 5, 2, 2),
(83, 5, 3, 2),
(84, 5, 4, 2),
(85, 5, 1, 1),
(86, 5, 2, 1),
(87, 5, 3, 1),
(88, 5, 4, 1),
(89, 5, 1, 2),
(90, 5, 2, 2),
(91, 5, 3, 2),
(92, 5, 4, 2),
(93, 5, 1, 1),
(94, 5, 2, 1),
(95, 5, 3, 1),
(96, 5, 4, 1),
(97, 5, 1, 2),
(98, 5, 2, 2),
(99, 5, 3, 2),
(100, 5, 4, 2),
(101, 5, 1, 1),
(102, 5, 2, 1),
(103, 5, 3, 1),
(104, 5, 4, 1),
(105, 5, 1, 2),
(106, 5, 2, 2),
(107, 5, 3, 2),
(108, 5, 4, 2),
(109, 5, 1, 1),
(110, 5, 2, 1),
(111, 5, 3, 1),
(112, 5, 4, 1),
(113, 5, 1, 2),
(114, 5, 2, 2),
(115, 5, 3, 2),
(116, 5, 4, 2),
(117, 5, 1, 1),
(118, 5, 2, 1),
(119, 5, 3, 1),
(120, 5, 4, 1),
(121, 5, 1, 2),
(122, 5, 2, 2),
(123, 5, 3, 2),
(124, 5, 4, 2),
(125, 5, 1, 1),
(126, 5, 2, 1),
(127, 5, 3, 1),
(128, 5, 4, 1),
(129, 5, 1, 2),
(130, 5, 2, 2),
(131, 5, 3, 2),
(132, 5, 4, 2),
(133, 5, 1, 1),
(134, 5, 2, 1),
(135, 5, 3, 1),
(136, 5, 4, 1),
(137, 5, 1, 2),
(138, 5, 2, 2),
(139, 5, 3, 2),
(140, 5, 4, 2),
(141, 5, 1, 1),
(142, 5, 2, 1),
(143, 5, 3, 1),
(144, 5, 4, 1),
(145, 5, 1, 2),
(146, 5, 2, 2),
(147, 5, 3, 2),
(148, 5, 4, 2),
(149, 5, 1, 1),
(150, 5, 2, 1),
(151, 5, 3, 1),
(152, 5, 4, 1),
(153, 5, 1, 2),
(154, 5, 2, 2),
(155, 5, 3, 2),
(156, 5, 4, 2),
(157, 5, 1, 1),
(158, 5, 2, 1),
(159, 5, 3, 1),
(160, 5, 4, 1),
(161, 5, 1, 2),
(162, 5, 2, 2),
(163, 5, 3, 2),
(164, 5, 4, 2),
(166, 5, 1, 1),
(167, 5, 2, 1),
(168, 5, 3, 1),
(169, 5, 4, 1),
(170, 5, 1, 2),
(171, 5, 2, 2),
(172, 5, 3, 2),
(173, 5, 4, 2),
(175, 5, 1, 1),
(176, 5, 2, 1),
(177, 5, 3, 1),
(178, 5, 4, 1),
(179, 5, 1, 2),
(180, 5, 2, 2),
(181, 5, 3, 2),
(182, 5, 4, 2),
(183, 5, 1, 1),
(184, 5, 2, 1),
(185, 5, 3, 1),
(186, 5, 4, 1),
(187, 5, 1, 2),
(188, 5, 2, 2),
(189, 5, 3, 2),
(190, 5, 4, 2),
(191, 5, 1, 1),
(192, 5, 2, 1),
(193, 5, 3, 1),
(194, 5, 4, 1),
(195, 5, 1, 2),
(196, 5, 2, 2),
(197, 5, 3, 2),
(198, 5, 4, 2),
(199, 5, 1, 1),
(200, 5, 2, 1),
(201, 5, 3, 1),
(202, 5, 4, 1),
(203, 5, 1, 2),
(204, 5, 2, 2),
(205, 5, 3, 2),
(206, 5, 4, 2),
(207, 0, 1, 2),
(208, 0, 2, 2),
(209, 0, 3, 2),
(210, 0, 4, 2),
(211, 5, 1, 1),
(212, 5, 2, 1),
(213, 5, 3, 1),
(214, 5, 4, 1),
(215, 5, 1, 2),
(216, 5, 2, 2),
(217, 5, 3, 2),
(218, 5, 4, 2),
(219, 0, 1, 2),
(220, 0, 2, 2),
(221, 0, 3, 2),
(222, 0, 4, 2),
(223, 5, 1, 1),
(224, 5, 2, 1),
(225, 5, 3, 1),
(226, 5, 4, 1),
(227, 5, 1, 2),
(228, 5, 2, 2),
(229, 5, 3, 2),
(230, 5, 4, 2),
(231, 0, 4, 2),
(232, 0, 5, 2),
(233, 0, 6, 2),
(234, 0, 7, 2),
(235, 5, 1, 1),
(236, 5, 2, 1),
(237, 5, 3, 1),
(238, 5, 4, 1),
(239, 5, 1, 2),
(240, 5, 2, 2),
(241, 5, 3, 2),
(242, 5, 4, 2),
(243, 0, 4, 2),
(244, 0, 5, 2),
(245, 0, 6, 2),
(246, 0, 7, 2),
(247, 5, 1, 1),
(248, 5, 2, 1),
(249, 5, 3, 1),
(250, 5, 4, 1),
(251, 5, 1, 2),
(252, 5, 2, 2),
(253, 5, 3, 2),
(254, 5, 4, 2),
(255, 0, 4, 2),
(256, 0, 5, 2),
(257, 0, 6, 2),
(258, 0, 7, 2),
(259, 5, 1, 1),
(260, 5, 2, 1),
(261, 5, 3, 1),
(262, 5, 4, 1),
(263, 5, 1, 2),
(264, 5, 2, 2),
(265, 5, 3, 2),
(266, 5, 4, 2),
(267, 5, 1, 1),
(268, 5, 2, 1),
(269, 5, 3, 1),
(270, 5, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_participantes`
--

CREATE TABLE `tbl_participantes` (
  `part_id` int(11) NOT NULL,
  `usa_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_participantes`
--

INSERT INTO `tbl_participantes` (`part_id`, `usa_id`, `pro_id`) VALUES
(1, 4, 1),
(2, 1, 1),
(3, 2, 2),
(4, 3, 2),
(5, 5, 3),
(6, 7, 3),
(7, 6, 4),
(8, 8, 4),
(9, 9, 5),
(10, 11, 5),
(11, 10, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preguntasalumno`
--

CREATE TABLE `tbl_preguntasalumno` (
  `pa_id` int(11) NOT NULL,
  `pa_pregunta` varchar(50) NOT NULL,
  `pa_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_preguntasalumno`
--

INSERT INTO `tbl_preguntasalumno` (`pa_id`, `pa_pregunta`, `pa_tipo`) VALUES
(1, '¿Crees digno ?', 0),
(2, '¿Crees que lo de verdad es sincero?', 0),
(5, 'Pregunta Global1', 1),
(6, 'Pregunta Global2', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preguntastribunal`
--

CREATE TABLE `tbl_preguntastribunal` (
  `pt_id` int(11) NOT NULL,
  `pt_pregunta` varchar(50) NOT NULL,
  `pt_valor` decimal(10,0) NOT NULL,
  `pt_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_preguntastribunal`
--

INSERT INTO `tbl_preguntastribunal` (`pt_id`, `pt_pregunta`, `pt_valor`, `pt_tipo`) VALUES
(1, '¿Como consigues ejecutar tu tesisi?', '1', 0),
(2, '¿Crees Valido este estudio?', '4', 0),
(3, '¿Sigues con las ganas de investigar?', '3', 1),
(4, '¿Crees digno de tu nota este estudio?', '2', 1),
(5, '¿Pregunta Global1?', '0', 1),
(6, 'pregunta global 4', '3', 1),
(7, 'pregunta global 3 ', '2', 1),
(8, '¿Pregunta Global2?', '0', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proyecto`
--

CREATE TABLE `tbl_proyecto` (
  `pro_id` int(11) NOT NULL,
  `pro_titulo` varchar(50) NOT NULL,
  `pro_fecha` date NOT NULL,
  `pro_estado` int(1) NOT NULL,
  `usp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_proyecto`
--

INSERT INTO `tbl_proyecto` (`pro_id`, `pro_titulo`, `pro_fecha`, `pro_estado`, `usp_id`) VALUES
(1, 'El pasado oscuro de las Langostas', '2017-02-24', 0, 1),
(2, 'Los Bosques frondosos de Alaska', '2017-03-15', 1, 2),
(3, 'Los prados verdes de Colorado', '2017-04-19', 0, 3),
(4, 'Las Comadrejas , ¿ verdad o ficción ?', '2017-05-26', 1, 4),
(5, 'El desarrollo de los Monos en la Luna', '2017-04-11', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipousuario`
--

CREATE TABLE `tbl_tipousuario` (
  `tipo_id` int(11) NOT NULL,
  `tipo_nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipousuario`
--

INSERT INTO `tbl_tipousuario` (`tipo_id`, `tipo_nombre`) VALUES
(1, 'Alumno'),
(2, 'Profesor'),
(3, 'Externo'),
(4, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tribunal`
--

CREATE TABLE `tbl_tribunal` (
  `trib_id` int(11) NOT NULL,
  `usp_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tribunal`
--

INSERT INTO `tbl_tribunal` (`trib_id`, `usp_id`, `pro_id`) VALUES
(1, 3, 2),
(2, 1, 3),
(3, 2, 3),
(4, 4, 1),
(5, 4, 2),
(6, 2, 1),
(7, 3, 2),
(8, 2, 2),
(9, 1, 1),
(10, 3, 5),
(11, 2, 4),
(12, 1, 4),
(15, 1, 5),
(16, 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarioalumno`
--

CREATE TABLE `tbl_usuarioalumno` (
  `usa_id` int(11) NOT NULL,
  `usa_nombre` varchar(30) NOT NULL,
  `usa_apellido` varchar(30) NOT NULL,
  `usa_apellido2` varchar(30) NOT NULL,
  `usa_curso` varchar(10) NOT NULL,
  `usa_user` varchar(30) NOT NULL,
  `usa_password` varchar(30) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuarioalumno`
--

INSERT INTO `tbl_usuarioalumno` (`usa_id`, `usa_nombre`, `usa_apellido`, `usa_apellido2`, `usa_curso`, `usa_user`, `usa_password`, `tipo_id`) VALUES
(1, 'Alejandro', 'Rodriguez', 'Alba', 'DAW', 'arodriguez', 'alejandro123', 1),
(2, 'Sergi', 'Falgar', 'Garcia', 'DAW', 'sfalgar', 'sergi123', 1),
(3, 'Eric', 'Petit', 'Fernandez', 'DAW', 'epetit', 'eric123', 1),
(4, 'Aaron', 'Muñoz', 'Cuenca', 'DAW', 'amuñoz', 'aaron123', 1),
(5, 'Antonio', 'Quesada', 'Garcia', 'ASIX', 'aquesada', 'antonio123', 1),
(6, 'Ignasi', 'Sanfeliu', 'Apellido', 'ASIX', 'isanfeliu', 'ignasi123', 1),
(7, 'Miguel ', 'Tello', 'Saez', 'DAW', 'mtello', 'miguel123', 1),
(8, 'Jordi', 'Fernandez', 'Contreras', 'GEA', 'jfernandez', 'jordi123', 1),
(9, 'Edhuardo', 'Chacaliaza', 'Huarcaya', 'DAW', 'echacaliaza', 'edhuardo123', 1),
(10, 'Miguel', 'Gomez', 'Gomez', 'DAW', 'mgomez', 'miguel123', 1),
(11, 'Alex', 'Gonzalez', 'Tiaco', 'ASIX', 'agonzalez', 'alex123', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarioexterno`
--

CREATE TABLE `tbl_usuarioexterno` (
  `use_id` int(11) NOT NULL,
  `use_nombre` varchar(30) NOT NULL,
  `use_user` varchar(30) NOT NULL,
  `use_password` varchar(30) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuarioexterno`
--

INSERT INTO `tbl_usuarioexterno` (`use_id`, `use_nombre`, `use_user`, `use_password`, `tipo_id`) VALUES
(1, 'Jemima', 'patata', 'enim', 3),
(2, 'Steven', 'melocoton', 'gravida', 3),
(3, 'Abbot', 'papaya', 'elit', 3),
(4, 'Blythe', 'mate', 'mauris', 3),
(5, 'Yoko', 'wakalone', 'posuere', 3),
(6, 'Alexa', 'requeson', 'Pellentesque', 3),
(7, 'Keiko', 'lostur', 'cursus', 3),
(8, 'Cassady', 'cosadis', 'mollis', 3),
(9, 'Brent', 'asd', 'ac', 3),
(10, 'Chaney', 'leos', 'convallis', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarioprof`
--

CREATE TABLE `tbl_usuarioprof` (
  `usp_id` int(11) NOT NULL,
  `usp_nombre` varchar(30) NOT NULL,
  `usp_apellido` varchar(30) NOT NULL,
  `usp_apellido2` varchar(30) NOT NULL,
  `usp_user` varchar(30) NOT NULL,
  `usp_password` varchar(30) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuarioprof`
--

INSERT INTO `tbl_usuarioprof` (`usp_id`, `usp_nombre`, `usp_apellido`, `usp_apellido2`, `usp_user`, `usp_password`, `tipo_id`) VALUES
(1, 'David', 'Marin', 'Apellido', 'dmarin', 'dmarin123', 2),
(2, 'Sergio', 'Jimenez', 'Apellido', 'sjimenez', 'sjimenez123', 2),
(3, 'Agnes', 'Plans', 'Apellido', 'aplans', 'aplans123', 2),
(4, 'Ignasi', 'Romero', 'SanJuan', 'iromero', 'iromero123', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_notaalumno`
--
ALTER TABLE `tbl_notaalumno`
  ADD PRIMARY KEY (`na_id`),
  ADD KEY `FK_notapreguntaalu` (`pa_id`),
  ADD KEY `notapartipantealu` (`part_id`);

--
-- Indices de la tabla `tbl_notatribunal`
--
ALTER TABLE `tbl_notatribunal`
  ADD PRIMARY KEY (`nt_id`),
  ADD KEY `FK_notapreguntatrib` (`pt_id`),
  ADD KEY `FK_notapartipantetrib` (`part_id`);

--
-- Indices de la tabla `tbl_participantes`
--
ALTER TABLE `tbl_participantes`
  ADD PRIMARY KEY (`part_id`),
  ADD KEY `FK_participanteproyecto` (`pro_id`),
  ADD KEY `FK_participantesuario` (`usa_id`);

--
-- Indices de la tabla `tbl_preguntasalumno`
--
ALTER TABLE `tbl_preguntasalumno`
  ADD PRIMARY KEY (`pa_id`);

--
-- Indices de la tabla `tbl_preguntastribunal`
--
ALTER TABLE `tbl_preguntastribunal`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indices de la tabla `tbl_proyecto`
--
ALTER TABLE `tbl_proyecto`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `FK_usuarioprofesor` (`usp_id`);

--
-- Indices de la tabla `tbl_tipousuario`
--
ALTER TABLE `tbl_tipousuario`
  ADD PRIMARY KEY (`tipo_id`);

--
-- Indices de la tabla `tbl_tribunal`
--
ALTER TABLE `tbl_tribunal`
  ADD PRIMARY KEY (`trib_id`),
  ADD KEY `FK_tribunalprofesor` (`usp_id`),
  ADD KEY `FK_tribunalproyecto` (`pro_id`);

--
-- Indices de la tabla `tbl_usuarioalumno`
--
ALTER TABLE `tbl_usuarioalumno`
  ADD PRIMARY KEY (`usa_id`),
  ADD UNIQUE KEY `usa_user` (`usa_user`),
  ADD KEY `FK_tipousuarioalumno` (`tipo_id`);

--
-- Indices de la tabla `tbl_usuarioexterno`
--
ALTER TABLE `tbl_usuarioexterno`
  ADD PRIMARY KEY (`use_id`),
  ADD UNIQUE KEY `use_user` (`use_user`),
  ADD KEY `FK_tipousuarioexterno` (`tipo_id`);

--
-- Indices de la tabla `tbl_usuarioprof`
--
ALTER TABLE `tbl_usuarioprof`
  ADD PRIMARY KEY (`usp_id`),
  ADD UNIQUE KEY `usp_user` (`usp_user`),
  ADD KEY `FK_tipousuarioprof` (`tipo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_notaalumno`
--
ALTER TABLE `tbl_notaalumno`
  MODIFY `na_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT de la tabla `tbl_notatribunal`
--
ALTER TABLE `tbl_notatribunal`
  MODIFY `nt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT de la tabla `tbl_participantes`
--
ALTER TABLE `tbl_participantes`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `tbl_preguntasalumno`
--
ALTER TABLE `tbl_preguntasalumno`
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tbl_preguntastribunal`
--
ALTER TABLE `tbl_preguntastribunal`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `tbl_proyecto`
--
ALTER TABLE `tbl_proyecto`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tbl_tipousuario`
--
ALTER TABLE `tbl_tipousuario`
  MODIFY `tipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_tribunal`
--
ALTER TABLE `tbl_tribunal`
  MODIFY `trib_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `tbl_usuarioalumno`
--
ALTER TABLE `tbl_usuarioalumno`
  MODIFY `usa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `tbl_usuarioexterno`
--
ALTER TABLE `tbl_usuarioexterno`
  MODIFY `use_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `tbl_usuarioprof`
--
ALTER TABLE `tbl_usuarioprof`
  MODIFY `usp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_notaalumno`
--
ALTER TABLE `tbl_notaalumno`
  ADD CONSTRAINT `FK_notapreguntaalu` FOREIGN KEY (`pa_id`) REFERENCES `tbl_preguntasalumno` (`pa_id`),
  ADD CONSTRAINT `notapartipantealu` FOREIGN KEY (`part_id`) REFERENCES `tbl_participantes` (`part_id`);

--
-- Filtros para la tabla `tbl_notatribunal`
--
ALTER TABLE `tbl_notatribunal`
  ADD CONSTRAINT `FK_notapartipantetrib` FOREIGN KEY (`part_id`) REFERENCES `tbl_participantes` (`part_id`),
  ADD CONSTRAINT `FK_notapreguntatrib` FOREIGN KEY (`pt_id`) REFERENCES `tbl_preguntastribunal` (`pt_id`);

--
-- Filtros para la tabla `tbl_participantes`
--
ALTER TABLE `tbl_participantes`
  ADD CONSTRAINT `FK_participanteproyecto` FOREIGN KEY (`pro_id`) REFERENCES `tbl_proyecto` (`pro_id`),
  ADD CONSTRAINT `FK_participantesuario` FOREIGN KEY (`usa_id`) REFERENCES `tbl_usuarioalumno` (`usa_id`);

--
-- Filtros para la tabla `tbl_proyecto`
--
ALTER TABLE `tbl_proyecto`
  ADD CONSTRAINT `FK_usuarioprofesor` FOREIGN KEY (`usp_id`) REFERENCES `tbl_usuarioprof` (`usp_id`);

--
-- Filtros para la tabla `tbl_tribunal`
--
ALTER TABLE `tbl_tribunal`
  ADD CONSTRAINT `FK_tribunalprofesor` FOREIGN KEY (`usp_id`) REFERENCES `tbl_usuarioprof` (`usp_id`),
  ADD CONSTRAINT `FK_tribunalproyecto` FOREIGN KEY (`pro_id`) REFERENCES `tbl_proyecto` (`pro_id`);

--
-- Filtros para la tabla `tbl_usuarioalumno`
--
ALTER TABLE `tbl_usuarioalumno`
  ADD CONSTRAINT `FK_tipousuarioalumno` FOREIGN KEY (`tipo_id`) REFERENCES `tbl_tipousuario` (`tipo_id`);

--
-- Filtros para la tabla `tbl_usuarioexterno`
--
ALTER TABLE `tbl_usuarioexterno`
  ADD CONSTRAINT `FK_tipousuarioexterno` FOREIGN KEY (`tipo_id`) REFERENCES `tbl_tipousuario` (`tipo_id`);

--
-- Filtros para la tabla `tbl_usuarioprof`
--
ALTER TABLE `tbl_usuarioprof`
  ADD CONSTRAINT `FK_tipousuarioprof` FOREIGN KEY (`tipo_id`) REFERENCES `tbl_tipousuario` (`tipo_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
