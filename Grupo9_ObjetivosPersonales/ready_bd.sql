-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 09:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ready_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `ciudad`
--

CREATE TABLE `ciudad` (
  `IdCiudad` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ciudad`
--

INSERT INTO `ciudad` (`IdCiudad`, `Nombre`, `FechaBaja`) VALUES
(1, '1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `equipo`
--

CREATE TABLE `equipo` (
  `IdEquipo` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Usuario_IdUsuario` int(11) DEFAULT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fintarea`
--

CREATE TABLE `fintarea` (
  `IdFinTarea` int(11) NOT NULL,
  `FechaFin` date NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `iniciotarea`
--

CREATE TABLE `iniciotarea` (
  `IdInicioTarea` int(11) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `integrantes`
--

CREATE TABLE `integrantes` (
  `IdIntegrante` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Equipo_IdEquipo` int(11) DEFAULT NULL,
  `Tareas_IdTareas` int(11) NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `IdLogin` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Usuario_IdUsuario` int(11) NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `IdPais` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`IdPais`, `Nombre`, `FechaBaja`) VALUES
(1, '1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `tareaequipo`
--

CREATE TABLE `tareaequipo` (
  `Tareas_IdTareas` int(11) NOT NULL,
  `Equipo_IdEquipo` int(11) NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tareas`
--

CREATE TABLE `tareas` (
  `IdTareas` int(11) NOT NULL,
  `Descripcion` varchar(180) NOT NULL,
  `TipoTarea_IdTipoTarea` int(11) NOT NULL,
  `InicioTarea_IdInicioTarea` int(11) NOT NULL,
  `FinTarea_IdFinTarea` int(11) NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tareausuario`
--

CREATE TABLE `tareausuario` (
  `Tareas_IdTareas` int(11) NOT NULL,
  `Usuario_IdUsuario` int(11) NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `telefono`
--

CREATE TABLE `telefono` (
  `IdTelefono` int(11) NOT NULL,
  `Numero` varchar(11) NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tipodoc`
--

CREATE TABLE `tipodoc` (
  `IdTipoDoc` int(11) NOT NULL,
  `Tipo` enum('DNI','LC','LE') NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipodoc`
--

INSERT INTO `tipodoc` (`IdTipoDoc`, `Tipo`, `FechaBaja`) VALUES
(1, 'DNI', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `tipotarea`
--

CREATE TABLE `tipotarea` (
  `IdTipoTarea` int(11) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `TipoDoc_IdTipoDoc` int(11) NOT NULL,
  `DNI` int(8) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Contraseña` varchar(45) NOT NULL,
  `Pais_IdPais` int(11) NOT NULL,
  `Ciudad_IdCiudad` int(11) NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`IdUsuario`, `Nombre`, `Apellido`, `TipoDoc_IdTipoDoc`, `DNI`, `Email`, `Contraseña`, `Pais_IdPais`, `Ciudad_IdCiudad`, `FechaBaja`) VALUES
(8, 'Diego', 'Silva', 1, 36125641, 'ddsilva88@hotmail.it', '123', 1, 1, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `usuarioequipo`
--

CREATE TABLE `usuarioequipo` (
  `Usuario_IdUsuario` int(11) NOT NULL,
  `Equipo_IdEquipo` int(11) NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usuariotelefono`
--

CREATE TABLE `usuariotelefono` (
  `Usuario_IdUsuario` int(11) NOT NULL,
  `Telefono_IdTelefono` int(11) NOT NULL,
  `FechaBaja` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`IdCiudad`);

--
-- Indexes for table `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`IdEquipo`),
  ADD KEY `Equipo_Usuario` (`Usuario_IdUsuario`);

--
-- Indexes for table `fintarea`
--
ALTER TABLE `fintarea`
  ADD PRIMARY KEY (`IdFinTarea`);

--
-- Indexes for table `iniciotarea`
--
ALTER TABLE `iniciotarea`
  ADD PRIMARY KEY (`IdInicioTarea`);

--
-- Indexes for table `integrantes`
--
ALTER TABLE `integrantes`
  ADD PRIMARY KEY (`IdIntegrante`),
  ADD KEY `Integrante_Equipo` (`Equipo_IdEquipo`),
  ADD KEY `Integrante_Tareas` (`Tareas_IdTareas`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`IdLogin`),
  ADD KEY `Login_Usuario` (`Usuario_IdUsuario`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`IdPais`);

--
-- Indexes for table `tareaequipo`
--
ALTER TABLE `tareaequipo`
  ADD PRIMARY KEY (`Tareas_IdTareas`,`Equipo_IdEquipo`),
  ADD KEY `TareaEquipo_Equipo` (`Equipo_IdEquipo`);

--
-- Indexes for table `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`IdTareas`),
  ADD KEY `Tareas_TipoTarea` (`TipoTarea_IdTipoTarea`),
  ADD KEY `Tareas_InicioTarea` (`InicioTarea_IdInicioTarea`),
  ADD KEY `Tareas_FinTarea` (`FinTarea_IdFinTarea`);

--
-- Indexes for table `tareausuario`
--
ALTER TABLE `tareausuario`
  ADD PRIMARY KEY (`Tareas_IdTareas`,`Usuario_IdUsuario`),
  ADD KEY `TareaUsuario_Usuario` (`Usuario_IdUsuario`);

--
-- Indexes for table `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`IdTelefono`);

--
-- Indexes for table `tipodoc`
--
ALTER TABLE `tipodoc`
  ADD PRIMARY KEY (`IdTipoDoc`);

--
-- Indexes for table `tipotarea`
--
ALTER TABLE `tipotarea`
  ADD PRIMARY KEY (`IdTipoTarea`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD KEY `Usuario_TipoDoc` (`TipoDoc_IdTipoDoc`),
  ADD KEY `Usuario_Pais` (`Pais_IdPais`),
  ADD KEY `Usuario_Ciudad` (`Ciudad_IdCiudad`);

--
-- Indexes for table `usuarioequipo`
--
ALTER TABLE `usuarioequipo`
  ADD PRIMARY KEY (`Usuario_IdUsuario`,`Equipo_IdEquipo`),
  ADD KEY `UsuarioEquipo_Equipo` (`Equipo_IdEquipo`);

--
-- Indexes for table `usuariotelefono`
--
ALTER TABLE `usuariotelefono`
  ADD PRIMARY KEY (`Usuario_IdUsuario`,`Telefono_IdTelefono`),
  ADD KEY `UsuarioTelefono_Telefono` (`Telefono_IdTelefono`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `IdCiudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `equipo`
--
ALTER TABLE `equipo`
  MODIFY `IdEquipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fintarea`
--
ALTER TABLE `fintarea`
  MODIFY `IdFinTarea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iniciotarea`
--
ALTER TABLE `iniciotarea`
  MODIFY `IdInicioTarea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `integrantes`
--
ALTER TABLE `integrantes`
  MODIFY `IdIntegrante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `IdLogin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `IdPais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tareas`
--
ALTER TABLE `tareas`
  MODIFY `IdTareas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telefono`
--
ALTER TABLE `telefono`
  MODIFY `IdTelefono` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipodoc`
--
ALTER TABLE `tipodoc`
  MODIFY `IdTipoDoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tipotarea`
--
ALTER TABLE `tipotarea`
  MODIFY `IdTipoTarea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `Equipo_Usuario` FOREIGN KEY (`Usuario_IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `integrantes`
--
ALTER TABLE `integrantes`
  ADD CONSTRAINT `Integrante_Equipo` FOREIGN KEY (`Equipo_IdEquipo`) REFERENCES `equipo` (`IdEquipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Integrante_Tareas` FOREIGN KEY (`Tareas_IdTareas`) REFERENCES `tareas` (`IdTareas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `Login_Usuario` FOREIGN KEY (`Usuario_IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tareaequipo`
--
ALTER TABLE `tareaequipo`
  ADD CONSTRAINT `TareaEquipo_Equipo` FOREIGN KEY (`Equipo_IdEquipo`) REFERENCES `equipo` (`IdEquipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `TareaEquipo_Tareas` FOREIGN KEY (`Tareas_IdTareas`) REFERENCES `tareas` (`IdTareas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `Tareas_FinTarea` FOREIGN KEY (`FinTarea_IdFinTarea`) REFERENCES `fintarea` (`IdFinTarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Tareas_InicioTarea` FOREIGN KEY (`InicioTarea_IdInicioTarea`) REFERENCES `iniciotarea` (`IdInicioTarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Tareas_TipoTarea` FOREIGN KEY (`TipoTarea_IdTipoTarea`) REFERENCES `tipotarea` (`IdTipoTarea`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tareausuario`
--
ALTER TABLE `tareausuario`
  ADD CONSTRAINT `TareaUsuario_Tareas` FOREIGN KEY (`Tareas_IdTareas`) REFERENCES `tareas` (`IdTareas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `TareaUsuario_Usuario` FOREIGN KEY (`Usuario_IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `Usuario_Ciudad` FOREIGN KEY (`Ciudad_IdCiudad`) REFERENCES `ciudad` (`IdCiudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Usuario_Pais` FOREIGN KEY (`Pais_IdPais`) REFERENCES `pais` (`IdPais`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Usuario_TipoDoc` FOREIGN KEY (`TipoDoc_IdTipoDoc`) REFERENCES `tipodoc` (`IdTipoDoc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `usuarioequipo`
--
ALTER TABLE `usuarioequipo`
  ADD CONSTRAINT `UsuarioEquipo_Equipo` FOREIGN KEY (`Equipo_IdEquipo`) REFERENCES `equipo` (`IdEquipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UsuarioEquipo_Usuario` FOREIGN KEY (`Usuario_IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `usuariotelefono`
--
ALTER TABLE `usuariotelefono`
  ADD CONSTRAINT `UsuarioTelefono_Telefono` FOREIGN KEY (`Telefono_IdTelefono`) REFERENCES `telefono` (`IdTelefono`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UsuarioTelefono_Usuario` FOREIGN KEY (`Usuario_IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
