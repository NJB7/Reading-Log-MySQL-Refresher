/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ reading_log /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE reading_log;

DROP TABLE IF EXISTS author;
CREATE TABLE `author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birth_country` varchar(30) DEFAULT NULL,
  `current_country` varchar(30) DEFAULT NULL,
  `country_details` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `bipoc` tinyint DEFAULT NULL,
  `lgbtq` tinyint DEFAULT NULL,
  `disabled` tinyint DEFAULT NULL,
  `author_details` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS book;
CREATE TABLE `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_title` varchar(1000) DEFAULT NULL,
  `pages` int DEFAULT NULL,
  `book_format` varchar(20) DEFAULT NULL,
  `fiction_non_fiction` varchar(20) DEFAULT NULL,
  `frontlist_backlist` varchar(20) DEFAULT NULL,
  `original_language` varchar(50) DEFAULT NULL,
  `language_read` varchar(50) DEFAULT NULL,
  `my_source` varchar(10) DEFAULT NULL,
  `bookshelf` varchar(50) DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `pub_date` date DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `imprint_id` int DEFAULT NULL,
  `translator_id` int DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `author_id` (`author_id`),
  KEY `publisher_id` (`publisher_id`),
  KEY `imprint_id` (`imprint_id`),
  KEY `translator_id` (`translator_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON DELETE SET NULL,
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`) ON DELETE SET NULL,
  CONSTRAINT `book_ibfk_3` FOREIGN KEY (`imprint_id`) REFERENCES `imprint` (`imprint_id`) ON DELETE SET NULL,
  CONSTRAINT `book_ibfk_4` FOREIGN KEY (`translator_id`) REFERENCES `translator` (`translator_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS imprint;
CREATE TABLE `imprint` (
  `imprint_id` int NOT NULL AUTO_INCREMENT,
  `imprint_name` varchar(50) DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  PRIMARY KEY (`imprint_id`),
  KEY `publisher_id` (`publisher_id`),
  CONSTRAINT `imprint_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS publisher;
CREATE TABLE `publisher` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS readbook;
CREATE TABLE `readbook` (
  `read_id` int NOT NULL AUTO_INCREMENT,
  `if_read` tinyint DEFAULT NULL,
  `started` date DEFAULT NULL,
  `finished` date DEFAULT NULL,
  `rating` tinyint DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  PRIMARY KEY (`read_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `readbook_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS translator;
CREATE TABLE `translator` (
  `translator_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birth_country` varchar(30) DEFAULT NULL,
  `current_country` varchar(30) DEFAULT NULL,
  `country_details` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`translator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




