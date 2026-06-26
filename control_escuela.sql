-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 16:11:20
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nombre_tutor` varchar(100) NOT NULL,
  `telefono_tutor` varchar(20) NOT NULL,
  `id_grado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `nombre`, `apellido`, `fecha_nacimiento`, `nombre_tutor`, `telefono_tutor`, `id_grado`) VALUES
(1, 'Mateo', 'García', '2018-03-12', 'Rosa García', '7100-1001', 1),
(2, 'Valentina', 'Hernández', '2018-05-20', 'Luis Hernández', '7100-1002', 1),
(3, 'Samuel', 'López', '2017-07-08', 'Marta López', '7100-1003', 2),
(4, 'Isabella', 'Martínez', '2017-09-15', 'Pedro Martínez', '7100-1004', 2),
(5, 'Sebastián', 'Ramírez', '2019-01-22', 'Ana Ramírez', '7100-1005', 3),
(6, 'Camila', 'Pérez', '2019-02-14', 'Jorge Pérez', '7100-1006', 4),
(7, 'Daniel', 'Sánchez', '2016-11-03', 'Laura Sánchez', '7100-1007', 5),
(8, 'Renata', 'Flores', '2016-12-19', 'Carlos Flores', '7100-1008', 6),
(9, 'Emilio', 'Torres', '2015-04-25', 'Sofía Torres', '7100-1009', 7),
(10, 'Antonella', 'Castro', '2015-06-30', 'Miguel Castro', '7100-1010', 8),
(11, 'Diego', 'Vásquez', '2015-08-11', 'Elena Vásquez', '7100-1011', 9),
(12, 'Mariana', 'Morales', '2014-03-05', 'Roberto Morales', '7100-1012', 10),
(13, 'Joaquín', 'Ortiz', '2014-05-17', 'Patricia Ortiz', '7100-1013', 11),
(14, 'Luciana', 'Cruz', '2014-09-09', 'Fernando Cruz', '7100-1014', 12),
(15, 'Benjamín', 'Reyes', '2013-02-28', 'Gabriela Reyes', '7100-1015', 13),
(16, 'Victoria', 'Mendoza', '2013-04-14', 'Ricardo Mendoza', '7100-1016', 14),
(17, 'Tomás', 'Jiménez', '2013-07-21', 'Andrea Jiménez', '7100-1017', 15),
(18, 'Emma', 'Romero', '2012-01-30', 'Daniel Romero', '7100-1018', 16),
(19, 'Nicolás', 'Aguilar', '2012-03-16', 'Valeria Aguilar', '7100-1019', 17),
(20, 'Florencia', 'Vargas', '2012-06-02', 'Manuel Vargas', '7100-1020', 18),
(21, 'Martín', 'Guzmán', '2011-09-27', 'Claudia Guzmán', '7100-1021', 19),
(22, 'Paula', 'Mejía', '2011-11-11', 'Alejandro Mejía', '7100-1022', 20),
(23, 'Lucas', 'Salazar', '2011-12-24', 'Verónica Salazar', '7100-1023', 21),
(24, 'Sara', 'Pineda', '2010-05-08', 'Oscar Pineda', '7100-1024', 22),
(25, 'Adrián', 'Hernández', '2010-10-19', 'Carmen Hernández', '7100-1025', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id_grado` int(11) NOT NULL,
  `nombre_grado` varchar(50) NOT NULL,
  `seccion` varchar(5) NOT NULL,
  `aula` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id_grado`, `nombre_grado`, `seccion`, `aula`) VALUES
(1, 'Kinder', 'A', 'Aula 101'),
(2, 'Kinder', 'B', 'Aula 102'),
(3, 'Kinder', 'C', 'Aula 103'),
(4, 'Preparatoria', 'A', 'Aula 104'),
(5, 'Preparatoria', 'B', 'Aula 105'),
(6, 'Preparatoria', 'C', 'Aula 106'),
(7, 'Primero Primaria', 'A', 'Aula 201'),
(8, 'Primero Primaria', 'B', 'Aula 202'),
(9, 'Primero Primaria', 'C', 'Aula 203'),
(10, 'Segundo Primaria', 'A', 'Aula 204'),
(11, 'Segundo Primaria', 'B', 'Aula 205'),
(12, 'Segundo Primaria', 'C', 'Aula 206'),
(13, 'Tercero Primaria', 'A', 'Aula 301'),
(14, 'Tercero Primaria', 'B', 'Aula 302'),
(15, 'Tercero Primaria', 'C', 'Aula 303'),
(16, 'Cuarto Primaria', 'A', 'Aula 304'),
(17, 'Cuarto Primaria', 'B', 'Aula 305'),
(18, 'Cuarto Primaria', 'C', 'Aula 306'),
(19, 'Quinto Primaria', 'A', 'Aula 401'),
(20, 'Quinto Primaria', 'B', 'Aula 402'),
(21, 'Quinto Primaria', 'C', 'Aula 403'),
(22, 'Sexto Primaria', 'A', 'Aula 404'),
(23, 'Sexto Primaria', 'B', 'Aula 405'),
(24, 'Sexto Primaria', 'C', 'Aula 406'),
(25, 'Sexto Primaria', 'D', 'Pabellón B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(100) NOT NULL,
  `id_profesor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materia`, `nombre_materia`, `id_profesor`) VALUES
(1, 'Matemáticas 1', 1),
(2, 'Lenguaje 1', 2),
(3, 'Ciencias Naturales 1', 3),
(4, 'Ciencias Sociales 1', 4),
(5, 'Educación Física 1', 5),
(6, 'Matemáticas 2', 6),
(7, 'Lenguaje 2', 7),
(8, 'Ciencias Naturales 2', 8),
(9, 'Ciencias Sociales 2', 9),
(10, 'Educación Física 2', 10),
(11, 'Matemáticas 3', 11),
(12, 'Lenguaje 3', 12),
(13, 'Ciencias Naturales 3', 13),
(14, 'Ciencias Sociales 3', 14),
(15, 'Computación', 15),
(16, 'Inglés 1', 16),
(17, 'Inglés 2', 17),
(18, 'Inglés 3', 18),
(19, 'Música', 19),
(20, 'Arte y Manualidades', 20),
(21, 'Valores y Ética', 21),
(22, 'Religión', 22),
(23, 'Matemáticas 4', 23),
(24, 'Lenguaje 4', 24),
(25, 'Ciencias Naturales 4', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_profesor` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id_profesor`, `nombre`, `apellido`, `telefono`, `email`) VALUES
(1, 'María', 'González', '7012-3456', 'maria.gonzalez@escuelita.edu'),
(2, 'José', 'Martínez', '7012-3457', 'jose.martinez@escuelita.edu'),
(3, 'Ana', 'López', '7012-3458', 'ana.lopez@escuelita.edu'),
(4, 'Carlos', 'Ramírez', '7012-3459', 'carlos.ramirez@escuelita.edu'),
(5, 'Lucía', 'Pérez', '7012-3460', 'lucia.perez@escuelita.edu'),
(6, 'Pedro', 'Sánchez', '7012-3461', 'pedro.sanchez@escuelita.edu'),
(7, 'Laura', 'Flores', '7012-3462', 'laura.flores@escuelita.edu'),
(8, 'Miguel', 'Rivera', '7012-3463', 'miguel.rivera@escuelita.edu'),
(9, 'Sofía', 'Torres', '7012-3464', 'sofia.torres@escuelita.edu'),
(10, 'Jorge', 'Castro', '7012-3465', 'jorge.castro@escuelita.edu'),
(11, 'Elena', 'Vásquez', '7012-3466', 'elena.vasquez@escuelita.edu'),
(12, 'Roberto', 'Morales', '7012-3467', 'roberto.morales@escuelita.edu'),
(13, 'Patricia', 'Ortiz', '7012-3468', 'patricia.ortiz@escuelita.edu'),
(14, 'Fernando', 'Cruz', '7012-3469', 'fernando.cruz@escuelita.edu'),
(15, 'Gabriela', 'Reyes', '7012-3470', 'gabriela.reyes@escuelita.edu'),
(16, 'Ricardo', 'Mendoza', '7012-3471', 'ricardo.mendoza@escuelita.edu'),
(17, 'Andrea', 'Jiménez', '7012-3472', 'andrea.jimenez@escuelita.edu'),
(18, 'Daniel', 'Romero', '7012-3473', 'daniel.romero@escuelita.edu'),
(19, 'Valeria', 'Aguilar', '7012-3474', 'valeria.aguilar@escuelita.edu'),
(20, 'Manuel', 'Vargas', '7012-3475', 'manuel.vargas@escuelita.edu'),
(21, 'Claudia', 'Guzmán', '7012-3476', 'claudia.guzman@escuelita.edu'),
(22, 'Alejandro', 'Mejía', '7012-3477', 'alejandro.mejia@escuelita.edu'),
(23, 'Verónica', 'Salazar', '7012-3478', 'veronica.salazar@escuelita.edu'),
(24, 'Oscar', 'Pineda', '7012-3479', 'oscar.pineda@escuelita.edu'),
(25, 'Carmen', 'Hernández', '7012-3480', 'carmen.hernandez@escuelita.edu');

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
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `id_grado` (`id_grado`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_profesor`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE CASCADE;

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id_grado`) ON DELETE SET NULL;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
