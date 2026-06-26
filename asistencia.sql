-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 15:22:58
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
-- Base de datos: `control_escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id_asistencia` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estado` enum('Presente','Ausente','Tarde','Justificado') NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`id_asistencia`, `id_estudiante`, `fecha`, `estado`, `observaciones`) VALUES
(1, 1, '2026-06-01', 'Presente', NULL),
(2, 2, '2026-06-01', 'Presente', NULL),
(3, 3, '2026-06-01', 'Ausente', 'Enfermedad reportada por el tutor'),
(4, 4, '2026-06-01', 'Tarde', 'Llegó 15 minutos tarde'),
(5, 5, '2026-06-01', 'Presente', NULL),
(6, 6, '2026-06-01', 'Justificado', 'Cita médica'),
(7, 7, '2026-06-01', 'Presente', NULL),
(8, 8, '2026-06-01', 'Presente', NULL),
(9, 9, '2026-06-01', 'Ausente', 'Sin justificación'),
(10, 10, '2026-06-01', 'Presente', NULL),
(11, 11, '2026-06-02', 'Presente', NULL),
(12, 12, '2026-06-02', 'Tarde', 'Problema de transporte'),
(13, 13, '2026-06-02', 'Presente', NULL),
(14, 14, '2026-06-02', 'Justificado', 'Viaje familiar'),
(15, 15, '2026-06-02', 'Presente', NULL),
(16, 16, '2026-06-02', 'Presente', NULL),
(17, 17, '2026-06-02', 'Ausente', 'Enfermedad reportada por el tutor'),
(18, 18, '2026-06-02', 'Presente', NULL),
(19, 19, '2026-06-02', 'Presente', NULL),
(20, 20, '2026-06-02', 'Tarde', 'Llegó 10 minutos tarde'),
(21, 21, '2026-06-03', 'Presente', NULL),
(22, 22, '2026-06-03', 'Presente', NULL),
(23, 23, '2026-06-03', 'Justificado', 'Cita médica'),
(24, 24, '2026-06-03', 'Presente', NULL),
(25, 25, '2026-06-03', 'Ausente', 'Sin justificación');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id_asistencia`),
  ADD KEY `id_estudiante` (`id_estudiante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
