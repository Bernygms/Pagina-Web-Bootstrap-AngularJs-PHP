-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2019 a las 10:29:29
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webxi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nombre_admin` varchar(50) NOT NULL,
  `apellidopaterno_admin` varchar(50) NOT NULL,
  `apellidomaterno_admin` varchar(50) NOT NULL,
  `edad_admin` varchar(10) NOT NULL,
  `genero_admin` varchar(10) NOT NULL,
  `direccion_admin` varchar(80) NOT NULL,
  `estado_admin` varchar(70) NOT NULL,
  `status_admin` int(11) NOT NULL,
  `pk_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_admin`, `nombre_admin`, `apellidopaterno_admin`, `apellidomaterno_admin`, `edad_admin`, `genero_admin`, `direccion_admin`, `estado_admin`, `status_admin`, `pk_id_usuario`) VALUES
(1, 'Brends Gms', 'Gomes', 'Montalvo', '22', 'Hombre', 'San Isidro Sur', 'Publa', 1, 1),
(2, 'Jose Migel', 'Olivera', 'Rivera', '22', 'Hombre', 'San Luis', 'San Luis', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app`
--

CREATE TABLE `app` (
  `id_app` int(11) NOT NULL,
  `nombre_app` varchar(50) NOT NULL,
  `token_app` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `app`
--

INSERT INTO `app` (`id_app`, `nombre_app`, `token_app`) VALUES
(1, 'API', '70f8bb05-37fe-4b55-b369-a512e33cf070'),
(2, 'Otra app', '92bb7c87-f06a-4137-96bd-af0cceb3c49c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(2) NOT NULL,
  `plata` int(2) NOT NULL,
  `oro` int(2) NOT NULL,
  `diamante` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `plata`, `oro`, `diamante`) VALUES
(1, 1, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `edad_cliente` int(11) NOT NULL,
  `perfil_url_cliente` varchar(200) NOT NULL,
  `estatura_cliente` varchar(30) NOT NULL,
  `peso_cliente` varchar(20) NOT NULL,
  `medidas_cliente` varchar(30) NOT NULL,
  `ojos_cliente` varchar(30) NOT NULL,
  `idioma_cliente` varchar(30) NOT NULL,
  `viajes_cliente` varchar(30) NOT NULL,
  `horario_cliente` varchar(30) NOT NULL,
  `celular_cliente` varchar(20) NOT NULL,
  `email_cliente` varchar(100) NOT NULL,
  `renta_fechainicio_cliente` date NOT NULL,
  `renta_fechafin_cliente` date NOT NULL,
  `status` int(2) NOT NULL,
  `categoria_cliente` int(11) NOT NULL,
  `pk_galeria_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `edad_cliente`, `perfil_url_cliente`, `estatura_cliente`, `peso_cliente`, `medidas_cliente`, `ojos_cliente`, `idioma_cliente`, `viajes_cliente`, `horario_cliente`, `celular_cliente`, `email_cliente`, `renta_fechainicio_cliente`, `renta_fechafin_cliente`, `status`, `categoria_cliente`, `pk_galeria_cliente`) VALUES
(1, 'Bety', 22, 'bety.jpg', '150 cm', '55 kg', '50 -  60', 'Verdes ', 'Espanol', 'Null', '9:00am  a 8:00 pm ', '2381707256', 'bety@hotmail.com', '2018-12-07', '2019-01-07', 0, 11, 1),
(2, 'Elva', 23, 'avatar.jpg', '150', '50', '40', 'verdes', 'espanol', 'Ninguno', '10  am - 12 pm ', '1234567890', 'cliente@hotmail.com', '2017-03-01', '2017-04-01', 1, 12, 2),
(3, 'Dalia', 33, 'avatar3.jpg', '150', '50', '40', 'verdes', 'espanol', 'Ninguno', '10  am - 12 pm', '1234567890', 'jose@jose.com', '2017-03-01', '2017-03-02', 1, 13, 3),
(4, 'Lizeth ', 17, 'avatar2.jpg', '120 cm', '50', '80', 'Azules', 'Espanol', 'Ninguno', '9:00 am 11:00 pm', '1234567890', 'linda@hotmail.com', '2017-10-28', '2017-11-28', 1, 12, 4),
(5, 'Leti', 20, 'leti.jpg', '150', '50', '40', 'verdes', 'espanol', 'Ninguno', '10  am - 12 pm', '1234567890', 'jose@jose.com', '2017-03-01', '2017-03-02', 1, 13, 5),
(6, 'Valeria Montalvo', 25, 'vale.jpg', '130 cm', '40 kg', '60 - 80 ', 'Cafes', 'Ingles', 'Ninguno', '09:00 am 17:30 pm ', '2391887277', 'valeria@hotmail.com', '2018-12-07', '2019-01-07', 1, 11, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id_galeria` int(11) NOT NULL,
  `img1` text NOT NULL,
  `img2` text NOT NULL,
  `img3` text NOT NULL,
  `img4` text NOT NULL,
  `img5` text NOT NULL,
  `img6` text NOT NULL,
  `img7` text NOT NULL,
  `img8` text NOT NULL,
  `img9` text NOT NULL,
  `img10` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id_galeria`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`, `img9`, `img10`) VALUES
(1, 'bety.jpg', 'bety.jpg', 'bety.jpg', 'bety.jpg', 'bety.jpg', 'bety.jpg', 'bety.jpg', 'bety.jpg', 'bety.jpg', 'bety.jpg'),
(2, 'avatar.jpg', 'avatar.jpg', 'avatar.jpg', 'avatar.jpg', 'avatar.jpg', 'avatar.jpg', 'avatar.jpg', 'avatar.jpg', 'avatar.jpg', 'avatar.jpg'),
(3, 'avatar3.jpg\r\n', 'avatar3.jpg\r\n', 'avatar3.jpg', 'avatar3.jpg', 'avatar3.jpg', 'avatar3.jpg', 'avatar3.jpg', 'avatar3.jpg', 'avatar3.jpg', 'avatar3.jpg'),
(4, 'avatar2.jpg', 'avatar2.jpg', 'avatar2.jpg', 'avatar2.jpg', 'avatar2.jpg', 'avatar2.jpg', 'avatar2.jpg', 'avatar2.jpg', 'avatar2.jpg', 'avatar2.jpg'),
(5, 'leti.jpg', 'leti.jpg', 'leti.jpg', 'leti.jpg', 'leti.jpg', 'leti.jpg', 'leti.jpg', 'leti.jpg', 'leti.jpg', 'leti.jpg'),
(6, 'vale.jpg', 'vale.jpg', 'vale.jpg', 'vale.jpg', 'vale.jpg', 'vale.jpg', 'vale.jpg', 'vale.jpg', 'vale.jpg', 'vale.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `username_usuario` varchar(50) NOT NULL,
  `password_usuario` varchar(100) NOT NULL,
  `privilegio_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `username_usuario`, `password_usuario`, `privilegio_usuario`) VALUES
(1, 'Brends', 'Brends01', 1),
(2, 'webxi', 'webxi01', 0),
(3, 'Brends', 'Brends01', 0),
(4, 'Lizbeth', '12345', 1),
(5, 'Sofia', '12345', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id_app`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id_galeria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `app`
--
ALTER TABLE `app`
  MODIFY `id_app` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id_galeria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
