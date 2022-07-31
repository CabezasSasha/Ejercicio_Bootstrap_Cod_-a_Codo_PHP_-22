-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2022 a las 14:52:50
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdconferencias2022`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `DNI` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `teléfono` varchar(30) NOT NULL,
  `Seniority` varchar(1) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `apellido`, `nombre`, `DNI`, `email`, `teléfono`, `Seniority`, `Password`) VALUES
(1, 'López', 'Juan', 15478992, 'juanlopez@gmail.com', '1169656264', '2', '8554566'),
(2, 'Vélez', 'Facundo', 43599588, 'facundovelez@gmail.com', '1175685269', '1', '1564565'),
(3, 'López', 'Sol', 4565853, 'solcilopez@gmail.com', '1169656264', '3', '87588525658'),
(4, 'Peréz', 'Laura', 21453885, 'lauraparez7558@gmail.com', '115869536', '2', '2023'),
(5, 'Gomez', 'Sabrina', 45256897, 'sabrigomez@gmail.com', '116897412', '2', '987654'),
(6, 'Herrera', 'Camila', 25568746, 'camilaherrera@gmail.com', '115623587', '1', '5658'),
(7, 'Lopéz', 'Federico', 30256874, 'fedelopez@gmail.com', '116425871', '1', '84466'),
(8, 'Pozo', 'Diego', 25458746, 'diegopozo@gmail.com', '116815314', '3', '748481418798652'),
(9, 'Pintura', 'Esperanza', 46583215, 'esperanzapintura545@gmail.com', '116815314', '1', '2018'),
(10, 'Cantero', 'Agustin', 4523875, 'agustincantero@gmail.com', '114879631', '3', '1987');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `DNI` (`DNI`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
