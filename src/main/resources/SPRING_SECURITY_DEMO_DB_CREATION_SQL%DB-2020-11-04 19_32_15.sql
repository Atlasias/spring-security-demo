-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.8-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 테이블 데이터 localdemo.file_mst:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `file_mst` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_mst` ENABLE KEYS */;

-- 테이블 데이터 localdemo.persistent_logins:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
INSERT INTO `persistent_logins` (`username`, `series`, `token`, `last_used`) VALUES
	('ADMIN', 'Gu7GrJMTPNJ/C9aRS4zqCg==', 'IMj6ySgw2jrX2ydwfMkJ1g==', '2020-10-22 15:56:03');
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;

-- 테이블 데이터 localdemo.user_acc:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user_acc` DISABLE KEYS */;
INSERT INTO `user_acc` (`USER_SEQ`, `USER_ID`, `REG_DT`, `MOD_DT`) VALUES
	('00001', 'ADMIN', '2020-10-19 13:29:45', NULL);
/*!40000 ALTER TABLE `user_acc` ENABLE KEYS */;

-- 테이블 데이터 localdemo.user_auth:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` (`AUTH_SEQ`, `AUTH_CD`, `AUTH_NM`, `AUTH_LEVEL`, `AUTH_DESCRPTION`, `AUTH_DUE_DT`, `AUTH_STATUS_CD`, `REG_DT`, `MOD_DT`) VALUES
	('00001', 'ADMIN001', '관리자', 'FULL_ADMIN', '', '2999-12-31 23:59:59', NULL, '2020-10-19 13:30:27', NULL);
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;

-- 테이블 데이터 localdemo.user_auth_map:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user_auth_map` DISABLE KEYS */;
INSERT INTO `user_auth_map` (`USER_SEQ`, `AUTH_SEQ`, `REG_DT`, `MOD_DT`) VALUES
	('00001', '00001', '2020-10-19 13:43:42', NULL);
/*!40000 ALTER TABLE `user_auth_map` ENABLE KEYS */;

-- 테이블 데이터 localdemo.user_info:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` (`USER_SEQ`, `USER_NAME`, `USER_DESC`, `POST_CD`, `ADDR1`, `ADDR2`, `ADDR3`, `COMPANY`, `JOB`, `JOB_POSITION`, `REG_DT`, `MOD_DT`) VALUES
	('00001', '시스템 관리자', '시스템 관리자', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-22 13:03:40', '2020-10-22 13:03:42');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;

-- 테이블 데이터 localdemo.user_key:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user_key` DISABLE KEYS */;
INSERT INTO `user_key` (`USER_SEQ`, `USER_KEY`, `ENC_TYPE`, `REG_DT`, `MOD_DT`) VALUES
	('00001', '$2a$10$B1FxLewpx68q7HOYt9wLlOqrEfO9T33rwOEDdoEFG0myhEk65lhhS', 'SPRING_SECURITY_BCRYPT', '2020-10-19 13:30:08', NULL);
/*!40000 ALTER TABLE `user_key` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
