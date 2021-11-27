-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-03-2021 a las 06:05:29
-- Versión del servidor: 5.7.15-log
-- Versión de PHP: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chambita3_0`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colonias`
--

CREATE TABLE `colonias` (
  `Id` bigint(10) NOT NULL,
  `cp` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `colonias`
--

INSERT INTO `colonias` (`Id`, `cp`) VALUES
(1, 39300),
(2, 39799),
(3, 39545);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `Idus` bigint(10) NOT NULL,
  `idser` bigint(10) DEFAULT NULL,
  `punt` int(5) DEFAULT NULL,
  `comentarios` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evaluacion`
--

INSERT INTO `evaluacion` (`Idus`, `idser`, `punt`, `comentarios`) VALUES
(1, 32, NULL, 'Excelente servicio, lo recomiendo'),
(7, 33, NULL, 'No quede muy satisfecho ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficios`
--

CREATE TABLE `oficios` (
  `id` bigint(10) NOT NULL,
  `oficio` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servidor`
--

CREATE TABLE `servidor` (
  `Id` bigint(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `segundoNombre` varchar(50) DEFAULT NULL,
  `apellidoP` varchar(10) DEFAULT NULL,
  `apellidoM` varchar(200) DEFAULT NULL,
  `edad` int(2) NOT NULL,
  `id_colonia` bigint(10) DEFAULT NULL,
  `telefono` bigint(10) DEFAULT NULL,
  `rutaFoto` longblob,
  `rutaCA` longblob,
  `CURP` varchar(18) NOT NULL,
  `INE` longblob NOT NULL,
  `QR` longblob NOT NULL,
  `colonia` varchar(100) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `oficio` varchar(20) NOT NULL,
  `Obras` longblob NOT NULL,
  `Obras2` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servidor`
--

INSERT INTO `servidor` (`Id`, `nombre`, `segundoNombre`, `apellidoP`, `apellidoM`, `edad`, `id_colonia`, `telefono`, `rutaFoto`, `rutaCA`, `CURP`, `INE`, `QR`, `colonia`, `calle`, `direccion`, `oficio`, `Obras`, `Obras2`) VALUES
(23, 'Pedro', 'Alonso', 'Morales', 'Pérez', 36, 39799, 7442678328, 0x666f746f732f6865727265726f2e6a7067, 0x666f746f732f616e74652e6a7067, 'MOPEPE45781269LAES', 0x666f746f732f696e65322e6a7067, '', 'Alta Icacos', 'Hilario Malpica', '', 'Herrero', 0x666f746f732f322e6a7067, 0x666f746f732f312e6a7067),
(24, 'Andrés ', '', 'Hernández', 'Gallardo', 50, 39699, 7442591366, 0x666f746f732f63617270696e7465726f2e6a7067, 0x666f746f732f616e74652e6a7067, 'HEGAAN528563ÑPLAAA', 0x666f746f732f696e65322e6a7067, '', 'Cayaco', 'Calle 10', '', 'Carpintero', 0x666f746f732f312e6a7067, 0x666f746f732f322e6a7067),
(25, 'Esthela', '', 'Morales', 'Terrero', 35, 39156, 7445074456, 0x666f746f732f636f63696e6572612e6a7067, 0x666f746f732f616e74652e6a7067, 'MOTEESKEJDK55AS6BS', 0x666f746f732f696e65322e6a7067, '', 'La sabana', 'Emiliano Zapata', '', 'Cocinera', 0x666f746f732f312e6a7067, 0x666f746f732f322e6a7067),
(26, 'Esteban ', '', 'Muchacho', 'Pineda', 33, 39488, 7442678328, 0x666f746f732f70696e746f722e6a7067, 0x666f746f732f616e74652e6a7067, 'MUPI932709HGRRRV02', 0x666f746f732f696e65322e6a7067, '', 'Corregidora', 'Jardín Azteca', '', 'Pintor ', 0x666f746f732f70696e746f7220322e6a7067, 0x666f746f732f70696e746f72312e6a7067),
(29, 'José', 'Armando', 'Gutiérrez', 'Nava', 36, 39488, 7442591366, 0x666f746f732f3931393332372e6a7067, 0x666f746f732f616e74652e6a7067, 'GUNAJ32709HGRRRV02', 0x666f746f732f696e65322e6a7067, '', 'El Arenal', 'Calle 5', '', 'Albañil', 0x666f746f732f312e6a7067, 0x666f746f732f332e6a7067),
(30, 'Manuel', '', 'Arellano ', 'Torrez', 31, 39156, 7445074456, 0x666f746f732f6d6563616e69636f2e6a7067, 0x666f746f732f616e74652e6a7067, 'ARTOMAN45545784LEJ', 0x666f746f732f696e65322e6a7067, '', 'Hornos', 'Ignacio Vallarta', '', 'Mecánico', 0x666f746f732f322e6a7067, 0x666f746f732f332e6a7067);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servoficios`
--

CREATE TABLE `servoficios` (
  `idOficio` bigint(10) NOT NULL,
  `Idser` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id` bigint(10) NOT NULL,
  `tipousuario` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `tipousuario`) VALUES
(1, 'Admin'),
(2, 'Usuar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` bigint(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `Idtipousuario` bigint(10) DEFAULT NULL,
  `contrasena` varchar(10) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `pasadmin` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `nombre`, `apellidos`, `Idtipousuario`, `contrasena`, `email`, `pasadmin`) VALUES
(1, 'Ulises', 'Meza', 1, '', 'uli.meza@gmail.com', '1212'),
(7, 'Jesús Eduardo', 'Calvario Meza', NULL, '123456', 'uli.meza@hdjdhd.com', ''),
(10, 'Ivan', 'Morales', NULL, '1212', 'ivan@gmail.com', '5260'),
(11, 'Jorge Ramses', 'Piza', NULL, '123', 'jorge.piza@gamil.com', '6052'),
(12, 'Mario', 'Aguilar', NULL, '1234', 'catherine@gmail.com', '9040'),
(13, 'Jesús', 'Meza', NULL, '123456', 'jesus.meza@gmail.com', '8010');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colonias`
--
ALTER TABLE `colonias`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`Idus`),
  ADD KEY `idser` (`idser`);

--
-- Indices de la tabla `oficios`
--
ALTER TABLE `oficios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servidor`
--
ALTER TABLE `servidor`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_colonia` (`id_colonia`),
  ADD KEY `idTrabajos` (`Obras`(3072));

--
-- Indices de la tabla `servoficios`
--
ALTER TABLE `servoficios`
  ADD PRIMARY KEY (`idOficio`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `servidor`
--
ALTER TABLE `servidor`
  MODIFY `Id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
