# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.21)
# Database: comments-api
# Generation Time: 2018-03-27 14:00:04 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;

INSERT INTO `comments` (`id`, `title`, `comment`)
VALUES
	(1,'Comment number 1','This is a comment string\n'),
	(2,'Comment number 2\n','This is a comment string\n'),
	(3,'Comment number 3','This is a comment string\n'),
	(4,'This is a comment title\n','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam accumsan libero nec erat congue imperdiet. Etiam ultricies porta lacus, vitae facilisis velit feugiat vitae. Fusce cursus tristique urna, non molestie ante suscipit eget. Nullam metus ipsum, vestibulum a finibus et, placerat eget felis. Morbi vel leo sit amet libero ornare vehicula. Donec elementum nisi eu eros ultrices gravida. Donec ac neque a eros blandit consectetur vitae ac sapien. Donec vulputate '),
	(5,'This is a comment title\n','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam accumsan libero nec erat congue imperdiet. Etiam ultricies porta lacus, vitae facilisis velit feugiat vitae. Fusce cursus tristique urna, non molestie ante suscipit eget. Nullam metus ipsum, vestibulum a finibus et, placerat eget felis. Morbi vel leo sit amet libero ornare vehicula. Donec elementum nisi eu eros ultrices gravida. Donec ac neque a eros blandit consectetur vitae ac sapien. Donec vulputate ');

/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
