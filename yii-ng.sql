-- Adminer 4.2.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('частное лицо','компания') NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `allow_mails` smallint(6) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` tinytext NOT NULL,
  `price` int(20) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `group` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `category` (`id`, `name`, `group`) VALUES
(9,	'Автомобили с пробегом',	'Транспорт'),
(10,	'Запчасти и аксессуары',	'Транспорт'),
(11,	'Водный транспорт',	'Транспорт'),
(14,	'Мотоциклы и мототехника',	'Транспорт'),
(23,	'Комнаты',	'Недвижимость'),
(24,	'Квартиры',	'Недвижимость'),
(26,	'Дома, дачи, коттеджи',	'Недвижимость'),
(42,	'Гаражи и машиноместа',	'Недвижимость'),
(81,	'Грузовики и спецтехника',	'Транспорт'),
(85,	'Земельные участки',	'Недвижимость'),
(86,	'Коммерческая недвижимость',	'Недвижимость'),
(109,	'Новые автомобили',	'Транспорт'),
(111,	'Вакансии (поиск сотрудников)',	'Работа'),
(112,	'Резюме (поиск работы)',	'Работа');

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `city` (`id`, `name`) VALUES
(641490,	'Барабинск'),
(641510,	'Бердск'),
(641600,	'Искитим'),
(641630,	'Колывань'),
(641680,	'Краснообск'),
(641710,	'Куйбышев'),
(641760,	'Мошково'),
(641780,	'Новосибирск'),
(641790,	'Обь'),
(641800,	'Ордынское'),
(641970,	'Черепаново');

-- 2015-10-06 08:31:35
