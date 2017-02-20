-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2017 a las 19:20:12
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_participantes`
--

CREATE TABLE `tbl_participantes` (
  `part_id` int(11) NOT NULL,
  `usa_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preguntasalumno`
--

CREATE TABLE `tbl_preguntasalumno` (
  `pa_id` int(11) NOT NULL,
  `pa_pregunta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preguntastribunal`
--

CREATE TABLE `tbl_preguntastribunal` (
  `pt_id` int(11) NOT NULL,
  `pt_pregunta` varchar(50) NOT NULL,
  `pt_valor` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipousuario`
--

CREATE TABLE `tbl_tipousuario` (
  `tipo_id` int(11) NOT NULL,
  `tipo_nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tribunal`
--

CREATE TABLE `tbl_tribunal` (
  `trib_id` int(11) NOT NULL,
  `usp_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `usa_password` varchar(30) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarioexterno`
--

CREATE TABLE `tbl_usuarioexterno` (
  `use_id` int(11) NOT NULL,
  `use_nombre` varchar(30) NOT NULL,
  `use_password` varchar(30) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarioprof`
--

CREATE TABLE `tbl_usuarioprof` (
  `usp_id` int(11) NOT NULL,
  `usp_nombre` varchar(30) NOT NULL,
  `usp_apellido` varchar(30) NOT NULL,
  `usp_apellido2` varchar(30) NOT NULL,
  `usp_password` varchar(30) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD KEY `FK_tipousuarioalumno` (`tipo_id`);

--
-- Indices de la tabla `tbl_usuarioexterno`
--
ALTER TABLE `tbl_usuarioexterno`
  ADD PRIMARY KEY (`use_id`),
  ADD KEY `FK_tipousuarioexterno` (`tipo_id`);

--
-- Indices de la tabla `tbl_usuarioprof`
--
ALTER TABLE `tbl_usuarioprof`
  ADD PRIMARY KEY (`usp_id`),
  ADD KEY `FK_tipousuarioprof` (`tipo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_notaalumno`
--
ALTER TABLE `tbl_notaalumno`
  MODIFY `na_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_notatribunal`
--
ALTER TABLE `tbl_notatribunal`
  MODIFY `nt_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_participantes`
--
ALTER TABLE `tbl_participantes`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_preguntasalumno`
--
ALTER TABLE `tbl_preguntasalumno`
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_preguntastribunal`
--
ALTER TABLE `tbl_preguntastribunal`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_proyecto`
--
ALTER TABLE `tbl_proyecto`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_tipousuario`
--
ALTER TABLE `tbl_tipousuario`
  MODIFY `tipo_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_tribunal`
--
ALTER TABLE `tbl_tribunal`
  MODIFY `trib_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_usuarioalumno`
--
ALTER TABLE `tbl_usuarioalumno`
  MODIFY `usa_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_usuarioexterno`
--
ALTER TABLE `tbl_usuarioexterno`
  MODIFY `use_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_usuarioprof`
--
ALTER TABLE `tbl_usuarioprof`
  MODIFY `usp_id` int(11) NOT NULL AUTO_INCREMENT;
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
