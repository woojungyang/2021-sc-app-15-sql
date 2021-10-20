-- --------------------------------------------------------
-- 호스트:                          localhost
-- 서버 버전:                        8.0.26 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- book 데이터베이스 구조 내보내기
-- CREATE DATABASE IF NOT EXISTS `book` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
-- USE `book`;


-- 테이블 book.users 구조 내보내기
CREATE TABLE IF NOT EXISTS `users` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1','2','3','4','5','6','7','8','9') NOT NULL DEFAULT '2' COMMENT '0:탈퇴 , 1:유효, 2:회원, 3:VIP, 9:관리자',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- 테이블 book.books 구조 내보내기
CREATE TABLE IF NOT EXISTS `books` (
  `idx` int NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '도서제목 255자 이하',
  `writer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '저자(255)',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '도서요약설명',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  `status` enum('0','1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '현재 상태(0:삭제,1:판매중,2:판매예정,3:절판)',
  `fidx` int unsigned NOT NULL,
  PRIMARY KEY (`idx`),
  KEY `fidx` (`fidx`),
  CONSTRAINT `FK_books_users` FOREIGN KEY (`fidx`) REFERENCES `users` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 book.books:~0 rows (대략적) 내보내기
DELETE FROM `books`;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

-- 테이블 book.files 구조 내보내기
CREATE TABLE IF NOT EXISTS `files` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `fidx` int NOT NULL,
  `oriname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `savename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mimetype` varchar(255) NOT NULL DEFAULT '',
  `size` int NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fieldname` enum('C','U') NOT NULL DEFAULT 'U' COMMENT 'C: cover , U:upfile',
  `status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '0 : 삭제, 1:사용',
  PRIMARY KEY (`idx`),
  KEY `fidx` (`fidx`),
  CONSTRAINT `FK_files_books` FOREIGN KEY (`fidx`) REFERENCES `books` (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 book.files:~0 rows (대략적) 내보내기
DELETE FROM `files`;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;

-- 테이블 book.sessions 구조 내보내기
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 book.sessions:~3 rows (대략적) 내보내기
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
	('7Mb3iZhxQOOqAm8u7SXUHOszUn5QYK2I', 1632812879, '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}'),
	('kLIxUkTk7Ax3ixCdwgweOnTCDChXb-kE', 1632818968, '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"},"user":{"idx":3,"userid":"woojungyang2","username":"양우정","email":"blossom1113@gmail.com","status":"2"}}'),
	('sGJ5aED300UwrE2gL6YZFWGVUGxbOYlJ', 1632812881, '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- 테이블 데이터 book.users:~0 rows (대략적) 내보내기
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
