-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para lugares_del_mundo
DROP DATABASE IF EXISTS `lugares_del_mundo`;
CREATE DATABASE IF NOT EXISTS `lugares_del_mundo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `lugares_del_mundo`;

-- Volcando estructura para tabla lugares_del_mundo.cities
DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COMMENT='este campo contendra las ciudades de cada continente ';

-- Volcando datos para la tabla lugares_del_mundo.cities: ~46 rows (aproximadamente)
DELETE FROM `cities`;
INSERT INTO `cities` (`id`, `name`) VALUES
	(1, 'Brasilia '),
	(2, 'Edimburgo '),
	(3, 'Ciudad de México '),
	(4, 'Chicago '),
	(5, 'Londres '),
	(6, 'Yarumal '),
	(7, 'Buenos Aires '),
	(8, 'Moscú '),
	(9, 'Tokio '),
	(10, 'El Cairo '),
	(11, 'Leticia '),
	(12, 'Berlin '),
	(13, 'Madrid '),
	(14, 'Viena '),
	(15, 'Brucelas '),
	(16, 'Ottawa '),
	(17, 'Sucre '),
	(18, 'Bogota '),
	(19, 'Quito '),
	(20, 'Montevideo '),
	(21, 'Caracas '),
	(22, 'Roseau '),
	(23, 'Luanda '),
	(24, 'Gaborone '),
	(25, 'Moroni '),
	(26, 'Nairobi '),
	(27, 'Monrovia '),
	(28, 'Victoria '),
	(29, 'Kabul '),
	(30, 'Abu Dhabi '),
	(31, 'Manila '),
	(32, 'Ciudad de Singapur '),
	(33, 'Damasco '),
	(34, 'Canberra '),
	(35, 'Suva '),
	(36, 'Port Vila '),
	(37, 'Fongafale'),
	(38, 'Majuro '),
	(40, 'Rosario '),
	(41, 'São Paulo '),
	(42, 'Hamburgo '),
	(43, 'Barranquilla '),
	(44, 'Paysandú '),
	(45, 'Cebú '),
	(46, 'Serowew '),
	(47, 'Mexicali ');

-- Volcando estructura para tabla lugares_del_mundo.cities-continents-countries
DROP TABLE IF EXISTS `cities-continents-countries`;
CREATE TABLE IF NOT EXISTS `cities-continents-countries` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` smallint(5) unsigned NOT NULL,
  `country_id` smallint(5) unsigned NOT NULL,
  `continent` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COMMENT='Este campo contendra la union de cada tabla pre-establecida';

-- Volcando datos para la tabla lugares_del_mundo.cities-continents-countries: ~47 rows (aproximadamente)
DELETE FROM `cities-continents-countries`;
INSERT INTO `cities-continents-countries` (`id`, `city_id`, `country_id`, `continent`) VALUES
	(1, 4, 35, 3),
	(2, 7, 3, 3),
	(3, 40, 3, 3),
	(4, 25, 21, 1),
	(5, 1, 4, 3),
	(6, 41, 4, 3),
	(7, 12, 8, 4),
	(8, 42, 8, 4),
	(9, 18, 1, 3),
	(10, 43, 1, 3),
	(11, 25, 12, 4),
	(12, 22, 18, 3),
	(13, 20, 16, 3),
	(14, 44, 16, 3),
	(15, 10, 6, 1),
	(16, 13, 9, 4),
	(17, 29, 25, 5),
	(18, 27, 23, 1),
	(19, 9, 7, 5),
	(20, 17, 14, 3),
	(21, 23, 19, 1),
	(22, 26, 22, 1),
	(23, 45, 27, 5),
	(24, 34, 30, 2),
	(25, 38, 34, 2),
	(26, 28, 24, 2),
	(27, 14, 10, 4),
	(28, 8, 5, 6),
	(29, 16, 13, 3),
	(30, 24, 20, 1),
	(31, 46, 20, 1),
	(32, 19, 15, 3),
	(33, 47, 2, 3),
	(34, 21, 17, 3),
	(35, 30, 26, 5),
	(36, 3, 2, 3),
	(37, 5, 36, 4),
	(38, 2, 36, 4),
	(39, 6, 1, 3),
	(40, 11, 1, 3),
	(41, 27, 23, 1),
	(42, 31, 27, 5),
	(43, 32, 28, 5),
	(44, 35, 31, 2),
	(45, 36, 32, 2),
	(46, 33, 29, 5),
	(47, 37, 33, 2);

-- Volcando estructura para tabla lugares_del_mundo.continents
DROP TABLE IF EXISTS `continents`;
CREATE TABLE IF NOT EXISTS `continents` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla contendra a los cinco continentes';

-- Volcando datos para la tabla lugares_del_mundo.continents: ~6 rows (aproximadamente)
DELETE FROM `continents`;
INSERT INTO `continents` (`id`, `name`) VALUES
	(1, 'África'),
	(2, 'Oceanía'),
	(3, 'América'),
	(4, 'Europa'),
	(5, 'Asia'),
	(6, 'Eurasia');

-- Volcando estructura para tabla lugares_del_mundo.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COMMENT='este campo contendra las ciudades de cada pais ';

-- Volcando datos para la tabla lugares_del_mundo.countries: ~35 rows (aproximadamente)
DELETE FROM `countries`;
INSERT INTO `countries` (`id`, `name`) VALUES
	(1, 'Colombia '),
	(2, 'México '),
	(3, 'Argentina '),
	(4, 'Brasil '),
	(5, 'Rusia '),
	(6, 'Egipto '),
	(7, 'Japon '),
	(8, 'Alemania '),
	(9, 'España '),
	(10, 'Austria '),
	(12, 'Belgica '),
	(13, 'Canada '),
	(14, 'Bolivia '),
	(15, 'Ecuador '),
	(16, 'Uruguay '),
	(17, 'Venezuela '),
	(18, 'Dominica '),
	(19, 'Angola '),
	(20, 'Botswana '),
	(21, 'Comoras '),
	(22, 'Kenya '),
	(23, 'Liberia '),
	(24, 'Seychelles '),
	(25, 'Afganistán '),
	(26, 'Emiratos Árabes Unidos '),
	(27, 'Filipinas '),
	(28, 'Singapur '),
	(29, 'Siria '),
	(30, 'Australia '),
	(31, 'Fiyi '),
	(32, 'Vanuatu '),
	(33, 'Tuvalu'),
	(34, 'Islas Marshall '),
	(35, 'Estados Unidos '),
	(36, 'Reino Unido ');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
