-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
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
CREATE DATABASE IF NOT EXISTS `book` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `book`;

-- 테이블 book.books 구조 내보내기
CREATE TABLE IF NOT EXISTS `books` (
  `idx` int NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '도서제목 255자 이하',
  `writer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '저자(255)',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '도서요약설명',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  `status` enum('0','1','2','3') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '현재 상태(0:삭제,1:판매중,2:판매예정,3:절판)',
  `fidx` int unsigned NOT NULL,
  PRIMARY KEY (`idx`),
  KEY `fidx` (`fidx`),
  CONSTRAINT `FK_books_users` FOREIGN KEY (`fidx`) REFERENCES `users` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 book.books:~33 rows (대략적) 내보내기
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`idx`, `title`, `writer`, `content`, `createdAt`, `status`, `fidx`) VALUES
	(1, '토끼와거북이', '토끼', '집에 얼른 가야지', '2021-09-28 14:40:16', '1', 2),
	(2, 'ddd', 'ddd', 'dddd', '2021-10-15 14:37:31', '1', 6),
	(3, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(4, '해님달님', '호랑이', '떡하나주면 안잡아먹지', '2021-10-15 16:52:41', '1', 6),
	(5, '춘향전', '성춘향', '이몽룡 빨리와', '2021-10-15 16:52:58', '1', 6),
	(6, '콩쥐팥쥐', '콩쥐', '팥쥐 가만안둬', '2021-10-15 16:53:28', '1', 6),
	(7, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(8, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(9, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(10, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(11, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(12, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(13, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(14, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(15, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(16, '해님달님', '호랑이', '떡하나주면 안잡아먹지', '2021-10-15 16:52:41', '1', 6),
	(17, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(18, '토끼와거북이', '토끼', '집에 얼른 가야지', '2021-09-28 14:40:16', '1', 2),
	(19, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(20, 'ddd', 'ddd', 'dddd', '2021-10-15 14:37:31', '1', 6),
	(21, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(22, '춘향전', '성춘향', '이몽룡 빨리와', '2021-10-15 16:52:58', '1', 6),
	(23, '춘향전', '성춘향', '이몽룡 빨리와', '2021-10-15 16:52:58', '1', 6),
	(24, '춘향전', '성춘향', '이몽룡 빨리와', '2021-10-15 16:52:58', '1', 6),
	(25, '해님달님', '호랑이', '떡하나주면 안잡아먹지', '2021-10-15 16:52:41', '1', 6),
	(26, 'ddd', 'ddd', 'dddd', '2021-10-15 14:37:31', '1', 6),
	(27, '해님달님', '호랑이', '떡하나주면 안잡아먹지', '2021-10-15 16:52:41', '1', 6),
	(28, '흥부와놀부', '흥부', '배가고프구나', '2021-10-15 16:52:19', '1', 6),
	(29, '해님달님', '호랑이', '떡하나주면 안잡아먹지', '2021-10-15 16:52:41', '1', 6),
	(30, '춘향전', '성춘향', '이몽룡 빨리와', '2021-10-15 16:52:58', '1', 6),
	(31, '콩쥐팥쥐', '콩쥐', '팥쥐 가만안둬', '2021-10-15 16:53:28', '1', 6),
	(32, '콩쥐팥쥐', '콩쥐', '팥쥐 가만안둬', '2021-10-15 16:53:28', '1', 6),
	(33, '콩쥐팥쥐', '콩쥐', '팥쥐 가만안둬', '2021-10-15 16:53:28', '1', 6);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 book.files:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` (`idx`, `fidx`, `oriname`, `savename`, `mimetype`, `size`, `createdAt`, `fieldname`, `status`) VALUES
	(1, 1, 'logo.png', '210928_7e4c33dd-cbfe-4d6b-85f5-55c7c1765d8f.png', 'image/png', 25272, '2021-09-28 14:40:16', 'C', '1'),
	(2, 1, 'jpg.png', '210928_ab3b532e-db3a-43da-a2d9-6f52e5ebf199.png', 'image/png', 3194, '2021-09-28 14:40:16', 'U', '1'),
	(3, 2, '12385174.jpg', '211015_4dac9471-29b8-49b1-b0ae-f0ce3d6167b4.jpg', 'image/jpeg', 577630, '2021-10-15 14:37:31', 'C', '1');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;

-- 테이블 book.sessions 구조 내보내기
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 book.sessions:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
	('Gbsxspki-75ZekjsFwf_WvMLvoYmz9AC', 1634805638, '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"},"passport":{"user":17}}'),
	('Nju362qGk7sZp1pK8KreNd8DGAIL7w4b', 1634871746, '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"},"passport":{"user":17}}'),
	('keuITR8Dmh7pvqAJkJ2aRcbsb51tqFUb', 1634805291, '{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"},"passport":{}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- 테이블 book.users 구조 내보내기
CREATE TABLE IF NOT EXISTS `users` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1','2','3','4','5','6','7','8','9') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '5' COMMENT '0:탈퇴 , 1:유효 3:sns회원, 5:회원, 3:VIP, 9:관리자',
  PRIMARY KEY (`idx`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 book.users:~6 rows (대략적) 내보내기
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`idx`, `userid`, `passwd`, `username`, `email`, `createdAt`, `status`) VALUES
	(1, 'woojungyang3', '$2b$08$dG/627MqHh30gMwhnOTkqejDxAoi9XdPApiL79gFdUwus1egwkk.2', '양우정2', 'blossom1114@nate.com', '2021-09-27 18:04:23', '5'),
	(2, 'woojungyang1', '$2b$08$rOUZdZm9cbvcuFiGTcANaOJTKOoNC2UYCwgpXG/LBx4Ingz05/r7u', '양우정', 'blossom1113@nate.com', '2021-09-28 14:39:17', '5'),
	(6, 'woojungyang777', '$2b$08$WvHBPfSKkx21I.zaLResC.lsSDg97D8UUZoADFBKttcSPqmQG5yF6', '양우정', 'blossom1113@naver.com', '2021-10-15 00:48:12', '5'),
	(15, 'ao0hzaGf3dbiDqBJStYIc-HaT4tQa1YCsoQC1xmIfvg', NULL, NULL, 'alwe46@hanmail.net', '2021-10-19 18:05:42', '3'),
	(16, '1929412018', NULL, '양우정', '951113rose@naver.com', '2021-10-20 15:29:03', '3'),
	(17, 'woojungyang888', '$2b$08$DSI1.JzEIxioc2eYoZkTLeQnZdc2wgvt7QekvpAGyZ4yYFk5bmfzC', '양우저저엉', 'blossom1118@naver.com', '2021-10-20 17:40:26', '5');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- 테이블 book.users_api 구조 내보내기
CREATE TABLE IF NOT EXISTS `users_api` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
  `fidx` int unsigned DEFAULT NULL COMMENT 'users->id',
  `userid` varchar(255) DEFAULT NULL COMMENT '임시아이디적용',
  `domain` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '허용가능도메인',
  `apikey` varchar(255) DEFAULT NULL COMMENT 'uuid4',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0:사용안함 1:사용함',
  PRIMARY KEY (`idx`),
  KEY `fidx` (`fidx`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 book.users_api:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `users_api` DISABLE KEYS */;
INSERT INTO `users_api` (`idx`, `fidx`, `userid`, `domain`, `apikey`, `createdAt`, `status`) VALUES
	(1, 6, NULL, 'http:127.0.0.1:3200,http://localhost:8080,http://127.0.0.1:8080,http://127.0.0.1:3100', '81c38d19-b6bc-45a8-852f-3d368178c871', '2021-10-15 12:49:51', '1'),
	(2, 3, NULL, 'http://127.0.0.1:4000,http://127.0.0.1:4100', 'f2414ee3-def9-4048-a092-84805377c096', '2021-10-15 17:50:46', '1');
/*!40000 ALTER TABLE `users_api` ENABLE KEYS */;

-- 테이블 book.users_sns 구조 내보내기
CREATE TABLE IF NOT EXISTS `users_sns` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT COMMENT '고유값',
  `fidx` int unsigned NOT NULL COMMENT 'user ->idx',
  `provider` enum('KA','NA') NOT NULL COMMENT '''KA'',''NA''',
  `snsid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'sns id',
  `snsName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'sns 사용자이름',
  `displayName` varchar(255) DEFAULT NULL COMMENT 'sns 표시이름',
  `email` varchar(255) DEFAULT NULL COMMENT 'sns email',
  `profileURL` varchar(255) DEFAULT NULL COMMENT 'sns 프로필 경로',
  `accessToken` varchar(255) NOT NULL COMMENT '접속 Token',
  `refreshToken` varchar(255) NOT NULL COMMENT '갱신 Token',
  `createdAT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '접속일',
  `status` enum('0','1','2','3','4','5') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '3' COMMENT '''0'':탈퇴,''1'':유휴,''5'':사용',
  PRIMARY KEY (`idx`),
  KEY `fidx` (`fidx`),
  CONSTRAINT `FK_users-sns_users` FOREIGN KEY (`fidx`) REFERENCES `users` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 book.users_sns:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `users_sns` DISABLE KEYS */;
INSERT INTO `users_sns` (`idx`, `fidx`, `provider`, `snsid`, `snsName`, `displayName`, `email`, `profileURL`, `accessToken`, `refreshToken`, `createdAT`, `status`) VALUES
	(11, 15, 'NA', 'ao0hzaGf3dbiDqBJStYIc-HaT4tQa1YCsoQC1xmIfvg', NULL, '우정', 'alwe46@hanmail.net', NULL, 'AAAAOleYU81HBAjOOT7ea49CTHhTnBQlOBbnBkytunyVnpgr-liqy0Co2ik3tHg_zBREe0hpI2S82z91YdqURYi0YcI', 'GLoPC2vlkkK1Lt0TwwLFHI72btii0naGhBIw4ised86NxuLbqls57lcDQYrxec2zpOIAzGyexJFFoBLhmTS6orDKvU1ZHii6TW2nS68Ols743EmKlMHj6qiszbRRH8sf3sqE', '2021-10-19 18:05:42', '3'),
	(12, 16, 'KA', '1929412018', '양우정', '양우정', '951113rose@naver.com', 'http://k.kakaocdn.net/dn/ccZZ5l/btrfVtupVQZ/uEZFc87d6D4j2g6ndz9HC0/img_640x640.jpg', 'lLKst39-D5sU003uXj69JtZ2TwPReUCVPGfBYgo9dRoAAAF8nGOPCw', 'yCVH_xx2FHfDOzzD8pfLEYQfD95LaMziWKJIBgo9dRoAAAF8nGOPCg', '2021-10-20 15:29:03', '3');
/*!40000 ALTER TABLE `users_sns` ENABLE KEYS */;

-- 테이블 book.users_withdrawal 구조 내보내기
CREATE TABLE IF NOT EXISTS `users_withdrawal` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
  `fidx` int unsigned NOT NULL COMMENT 'users->idx',
  `msg` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '회원탈퇴사유',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '탈퇴일',
  PRIMARY KEY (`idx`),
  KEY `fidx` (`fidx`),
  CONSTRAINT `FK__users` FOREIGN KEY (`fidx`) REFERENCES `users` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 book.users_withdrawal:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `users_withdrawal` DISABLE KEYS */;
INSERT INTO `users_withdrawal` (`idx`, `fidx`, `msg`, `createdAt`) VALUES
	(3, 6, '회원탈퇴할꺼야아', '2021-10-19 11:43:36'),
	(4, 6, '탈퇴할꺼에요', '2021-10-19 12:28:46');
/*!40000 ALTER TABLE `users_withdrawal` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
