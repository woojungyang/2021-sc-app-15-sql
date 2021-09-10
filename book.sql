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
CREATE DATABASE IF NOT EXISTS `book` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `book`;

-- 테이블 book.books 구조 내보내기
CREATE TABLE IF NOT EXISTS `books` (
  `idx` int NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '도서제목 255자 이하',
  `writer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '저자(255)',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '도서요약설명',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '표지사진',
  `createAt` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  `status` enum('0','1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '현재 상태(0:절판,1:판매중,2:판매예정,3:삭제)',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 book.books:~15 rows (대략적) 내보내기
DELETE FROM `books`;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`idx`, `title`, `writer`, `content`, `cover`, `createAt`, `status`) VALUES
	(1, '홍길동전', '허균', '아버지를 아버지라', NULL, '2021-09-02 16:43:34', '1'),
	(2, '해님달님', '', '떡하나 주면 안잡아 먹지', NULL, '2021-09-02 17:48:38', '1'),
	(3, '심청전', '아버지', '공양미 삼백석을', NULL, '2021-09-08 10:46:42', '1'),
	(4, 'ㅇㅇㅇ', 'ㅇㄴㄹㅈㄷ', '', NULL, '2021-09-08 12:10:54', '3'),
	(5, 'ㅇㄹㄹㅇㄴㅁㄹ', 'ㄴㅁㅇㄹㄴㅁ', 'ㄴㅁㅇㄻㄴㄹ', NULL, '2021-09-08 13:14:05', '3'),
	(6, 'vdfdg', 'sfgf', 'dfgfdsg', NULL, '2021-09-08 14:54:17', '3'),
	(7, '콩쥐팥쥐', '콩쥐', '가만안둬', NULL, '2021-09-08 14:54:39', '1'),
	(8, '흥부와놀부', '흥부', '배고프구나', NULL, '2021-09-08 14:54:51', '1'),
	(9, '강아지똥', '강아지똥', '누가 싼똥인가', NULL, '2021-09-08 14:55:18', '1'),
	(10, '별주부전', '토끼', '간을 안줄꺼야', NULL, '2021-09-08 14:55:47', '1'),
	(11, '토끼와거북이', '거북이', '같이가자좀', NULL, '2021-09-08 14:56:08', '1'),
	(12, '시골쥐와서울쥐', '서울쥐', '', NULL, '2021-09-08 14:56:39', '1'),
	(13, 'ddd', 'sfsdf', 'sf', NULL, '2021-09-08 16:40:03', '1'),
	(14, 'ddd', 'sfsdf', 'sf', NULL, '2021-09-08 18:49:36', '1'),
	(15, '테스트', '테스트', '테스트', NULL, '2021-09-08 20:18:27', '1'),
	(16, 'ddd', 'fff', 'dfggdg', NULL, '2021-09-09 12:04:40', '1');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

-- 테이블 book.files 구조 내보내기
CREATE TABLE IF NOT EXISTS `files` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 book.files:~4 rows (대략적) 내보내기
DELETE FROM `files`;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` (`idx`, `fidx`, `oriname`, `savename`, `mimetype`, `size`, `createdAt`, `fieldname`, `status`) VALUES
	(1, 3, 'png.png', '210908_a4e74419-7083-4507-ace4-8322fda96236.png', 'image/png', 2742, '2021-09-08 10:46:42', 'C', '1'),
	(2, 4, '구직준비도검사결과_양우정.pdf', '210908_acbeef96-822d-4285-b3fe-444a3f53da5d.pdf', 'application/pdf', 90595, '2021-09-08 12:10:54', 'U', '1'),
	(3, 11, 'logo.png', '210908_f620d93e-7372-44d9-b28a-92d371e60716.png', 'image/png', 25272, '2021-09-08 14:56:08', 'C', '1'),
	(4, 15, 'logo.png', '210908_9783f331-d0a5-4864-ab2b-3571c5e0d478.png', 'image/png', 25272, '2021-09-08 20:18:27', 'C', '1'),
	(5, 16, 'logo.png', '210909_7a119fc8-97bd-45ca-b4a2-b62423a0e349.png', 'image/png', 25272, '2021-09-09 12:04:40', 'C', '1'),
	(6, 16, '직업선호도검사(S형)결과_양우정.pdf', '210909_da777a1d-df33-4bf5-8bc4-fd5b2017380c.pdf', 'application/pdf', 137877, '2021-09-09 12:04:40', 'U', '1');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
