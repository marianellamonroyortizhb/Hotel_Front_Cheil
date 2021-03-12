-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-03-2021 a las 19:29:50
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `giracod2_cheilfront`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dbo.Hoteles`
--

CREATE TABLE `dbo.Hoteles` (
  `Id` int(11) NOT NULL,
  `Hotel` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Estrellas` int(11) NOT NULL,
  `Ciudad` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Dirección` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Precio Noche` int(11) NOT NULL,
  `Descripción` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dbo.Hoteles`
--

INSERT INTO `dbo.Hoteles` (`Id`, `Hotel`, `Estrellas`, `Ciudad`, `Dirección`, `Precio Noche`, `Descripción`) VALUES
(1, 'Hotel la Estancia', 4, 'Bogotá', 'Carrera 7 # 85-24', 250000, 'Hotel cerca de la Zona T y al parque de la 93. Habitaciones de para acomodación sencilla, doble y triple.'),
(2, 'Hostal Azul Marino', 2, 'Cartagena', 'Calle 12 No. 4-56', 45000, 'El hostal recibe turistas internacionales, tiene servicio de cocina compartida, cuenta con habitaciones con baño privado. '),
(3, 'Hotel Alameda', 3, 'Bogotá', 'Calle 185 No. 42-12', 175000, 'Hotel preferido por personas que viajen por motivos laborales, se realiza recepción de eventos como cumpleaños y matrimonios. Cerca al centro comercial Santafé.'),
(4, 'Casa Valencia', 2, 'Medellín', 'Calle 39 No.16-15', 80000, 'Ideal para las personas que viajen solas y deseen compartir en un ambiente familiar. '),
(5, 'Hotel Montesorri', 5, 'Cartagena', 'Calle 19 No. 32-15', 320000, 'Hotel ideal para quienes quieran vivir una experiencia preferencial, cerca a la playa. ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dbo.Hoteles`
--
ALTER TABLE `dbo.Hoteles`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dbo.Hoteles`
--
ALTER TABLE `dbo.Hoteles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
