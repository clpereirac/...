-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2024 a las 00:25:28
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_formulario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `codigo_postal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `telefono`, `codigo_postal`) VALUES
(44, 'Laura Herrera', 'laura.herrera@gmail.com', '741852963', '0000'),
(45, 'Laura Herrera', 'laura.herrera@gmail.com', '741852963', '0000'),
(46, 'Carlos Sanchez', 'carlos.sanchez@yahoo.com', '+59179999999', '0000'),
(47, 'Rosa Martinez', 'rosa_martinez@hotmail.com', '+591 79999999', '00591'),
(48, 'Pedro Vargas', 'pedro.vargas@gmail.com', '+59179999990', '0000'),
(49, 'Juan Carlos Pérez Gómez', 'user_name@example.com', '+59171174894', '0000'),
(50, 'Juan Carlos Ferreira Caba', 'juan_ferreira123@gmail.com', '71176771', '0000'),
(51, 'User name', 'user-name@example.co.uk', '70000000', '0000'),
(52, 'User name', 'user_name@example.co.uk', '70000000', '0000'),
(53, 'Juan Pérez Gómez', 'juan_perez123@gmail.com.bo', '70000001', '00591'),
(54, 'Juan Perez Ferreira', 'juan-perez789@hotmail.com.co', '+591 70000000', '00591'),
(55, 'Juan Carlos Pinto Gómez', 'user_name@example.com', '70000000', '00591'),
(56, 'Juan Carlos Ferreira', 'user.name@example.com', '+59171174890', '00591'),
(57, 'Juana Carlos Ferreira', 'user.name@example.com', '+59171174890', '00591'),
(58, 'Fernanda Ferreira', 'user.fer@example.com', '+59171174890', '00591'),
(59, 'Juan Carlos Medina Perez', 'juan_medina123@gmaimil.com.bo', '70000000', '0000'),
(60, 'Juan Marcelo Perez Gomez', 'juana_example123@outlook.com.bo', '70000000', '00591'),
(61, 'Claudia Pereira Cuba', 'user_clau@gmail.com.bo', '+59170000000', '00591'),
(62, 'Claudia Pereira', 'claupc729@gmail.com', '71174894', '0000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
