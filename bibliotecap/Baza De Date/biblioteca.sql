-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Gazda: localhost
-- Timp de generare: 26 May 2019 la 23:42
-- Versiune server: 5.6.12-log
-- Versiune PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Bază de date: `biblioteca`
--
CREATE DATABASE IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `biblioteca`;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `User` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `admin`
--

INSERT INTO `admin` (`User`, `Password`) VALUES
('calin', 'calin');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Autor` varchar(20) NOT NULL,
  `Tip` varchar(20) NOT NULL,
  `Continut` varchar(20) NOT NULL,
  `Localizare` varchar(40) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
  `User` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `profesor`
--

INSERT INTO `profesor` (`User`, `Password`) VALUES
('calin', 'calin');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `stare`
--

CREATE TABLE IF NOT EXISTS `stare` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Accesari` varchar(10) NOT NULL,
  `Stare` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Salvarea datelor din tabel `stare`
--

INSERT INTO `stare` (`Id`, `Accesari`, `Stare`) VALUES
(1, '1', 'Blocat'),
(2, '1', 'Blocat'),
(3, '1', 'Blocat'),
(4, '-1', 'Liber'),
(5, '1', 'Blocat'),
(6, '-1', 'Liber'),
(7, '1', 'Blocat'),
(8, '-1', 'Liber');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `User` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `student`
--

INSERT INTO `student` (`User`, `Password`) VALUES
('calin', 'calin'),
('rumble', 'rymble');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
