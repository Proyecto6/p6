-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2017 a las 16:18:53
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.24

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
(1, 10, 1, 1),
(2, 6, 2, 1),
(3, 2, 2, 6),
(4, 7, 2, 10),
(5, 5, 1, 11),
(6, 7, 1, 6);

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
(1, 8, 1, 1),
(2, 3, 1, 2),
(3, 7, 2, 3),
(4, 7, 3, 11),
(5, 4, 2, 5),
(6, 8, 2, 10),
(7, 9, 4, 1),
(8, 0, 2, 1),
(9, 6, 3, 1),
(10, 3, 2, 10);

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
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_preguntasalumno`
--

INSERT INTO `tbl_preguntasalumno` (`pa_id`, `pa_pregunta`,`pro_id`) VALUES
(1, '¿Crees digno ?', 1),
(2, '¿Crees que lo de verdad es sincero?', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preguntastribunal`
--

CREATE TABLE `tbl_preguntastribunal` (
  `pt_id` int(11) NOT NULL,
  `pt_pregunta` varchar(50) NOT NULL,
  `pt_valor` decimal(10,0) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_preguntastribunal`
--

INSERT INTO `tbl_preguntastribunal` (`pt_id`, `pt_pregunta`, `pt_valor`,`pro_id`) VALUES
(1, '¿Como consigues ejecutar tu tesisi?', '1', 1),
(2, '¿Crees Valido este estudio?', '4', 1),
(3, '¿Sigues con las ganas de investigar?', '3', 1),
(4, '¿Crees digno de tu nota este estudio?', '2', 1);

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
(1, 'El pasado oscuro de las Langostas', '2017-02-24', 1, 1),
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
  `tipo_id` int(11) NOT NULL,
  UNIQUE (`usa_user`), 
  PRIMARY KEY (`usa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuarioalumno`
--

INSERT INTO `tbl_usuarioalumno` (`usa_id`, `usa_nombre`, `usa_apellido`, `usa_apellido2`, `usa_curso`,`usa_user`, `usa_password`, `tipo_id`) VALUES
(1, 'Alejandro', 'Rodriguez', 'Alba', 'DAW','arodriguez', 'alejandro123', 1),
(2, 'Sergi', 'Falgar', 'Garcia', 'DAW','sfalgar', 'sergi123', 1),
(3, 'Eric', 'Petit', 'Fernandez', 'DAW', 'epetit','eric123', 1),
(4, 'Aaron', 'Muñoz', 'Cuenca', 'DAW', 'amuñoz','aaron123', 1),
(5, 'Antonio', 'Quesada', 'Garcia', 'ASIX','aquesada', 'antonio123', 1),
(6, 'Ignasi', 'Sanfeliu', 'Apellido', 'ASIX','isanfeliu', 'ignasi123', 1),
(7, 'Miguel ', 'Tello', 'Saez', 'DAW','mtello', 'miguel123', 1),
(8, 'Jordi', 'Fernandez', 'Contreras', 'GEA','jfernandez', 'jordi123', 1),
(9, 'Edhuardo', 'Chacaliaza', 'Huarcaya', 'DAW','echacaliaza', 'edhuardo123', 1),
(10, 'Miguel', 'Gomez', 'Gomez', 'DAW','mgomez', 'miguel123', 1),
(11, 'Alex', 'Gonzalez', 'Tiaco', 'ASIX','agonzalez', 'alex123', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarioexterno`
--

CREATE TABLE `tbl_usuarioexterno` (
  `use_id` int(11) NOT NULL,
  `use_nombre` varchar(30) NOT NULL,
  `use_user` varchar(30) NOT NULL,
  `use_password` varchar(30) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  UNIQUE (`use_user`), 
  PRIMARY KEY (`use_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuarioexterno`
--

INSERT INTO `tbl_usuarioexterno` (`use_id`, `use_nombre`,`use_user`, `use_password`, `tipo_id`) VALUES
(1, 'Jemima','patata', 'enim', 3),
(2, 'Steven', 'melocoton','gravida', 3),
(3, 'Abbot', 'papaya','elit', 3),
(4, 'Blythe', 'mate','mauris', 3),
(5, 'Yoko', 'wakalone','posuere', 3),
(6, 'Alexa', 'requeson','Pellentesque', 3),
(7, 'Keiko','lostur', 'cursus', 3),
(8, 'Cassady', 'cosadis','mollis', 3),
(9, 'Brent', 'asd','ac', 3),
(10, 'Chaney','leos', 'convallis', 3);

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
  `tipo_id` int(11) NOT NULL,
  UNIQUE (`usp_user`), 
  PRIMARY KEY (`usp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuarioprof`
--

INSERT INTO `tbl_usuarioprof` (`usp_id`, `usp_nombre`, `usp_apellido`, `usp_apellido2`,`usp_user`, `usp_password`, `tipo_id`) VALUES
(1, 'David', 'Marin', 'Apellido','dmarin', 'dmarin123', 2),
(2, 'Sergio', 'Jimenez', 'Apellido', 'sjimenez','sjimenez123', 2),
(3, 'Agnes', 'Plans', 'Apellido', 'aplans','aplans123', 2),
(4, 'Ignasi', 'Romero', 'SanJuan', 'iromero','iromero123', 2);

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
  ADD KEY `FK_tipousuarioalumno` (`tipo_id`);

--
-- Indices de la tabla `tbl_usuarioexterno`
--
ALTER TABLE `tbl_usuarioexterno`
  ADD KEY `FK_tipousuarioexterno` (`tipo_id`);

--
-- Indices de la tabla `tbl_usuarioprof`
--
ALTER TABLE `tbl_usuarioprof`
  ADD KEY `FK_tipousuarioprof` (`tipo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_notaalumno`
--
ALTER TABLE `tbl_notaalumno`
  MODIFY `na_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tbl_notatribunal`
--
ALTER TABLE `tbl_notatribunal`
  MODIFY `nt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tbl_participantes`
--
ALTER TABLE `tbl_participantes`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `tbl_preguntasalumno`
--
ALTER TABLE `tbl_preguntasalumno`
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tbl_preguntastribunal`
--
ALTER TABLE `tbl_preguntastribunal`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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

  ALTER TABLE `tbl_preguntasalumno`
  ADD CONSTRAINT `FK_paproyecto` FOREIGN KEY (`pro_id`) REFERENCES `tbl_proyecto` (`pro_id`);
  
ALTER TABLE `tbl_preguntastribunal`
  ADD CONSTRAINT `FK_ptproyecto` FOREIGN KEY (`pro_id`) REFERENCES `tbl_proyecto` (`pro_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
