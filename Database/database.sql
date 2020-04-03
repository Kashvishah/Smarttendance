CREATE DATABASE `login_info`;

USE `login_info`;

DROP TABLE IF EXISTS `admin_login`;


CREATE TABLE `admin_login` (
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES `admin_login` WRITE;

INSERT INTO `admin_login` VALUES ('admin','admin');

UNLOCK TABLES;

DROP TABLE IF EXISTS `student_login`;

CREATE TABLE `student_login` (
  `username` varchar(16) NOT NULL,
  `student_email` varchar(255) DEFAULT NULL,
  `parent_email` varchar(255) DEFAULT NULL,
  `roll_id` varchar(32) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES `student_login` WRITE;

INSERT INTO `student_login` VALUES ('Mihir Tuli','mihir.tuli01@gmail.com','mihir.tuli02@gmail.com','ENG17CS0127','2019-03-26 01:12:53'),('Kashvi shah','shahkashvi2000@gmail.com','chintanshah1890@gmail.com','ENG17CS0106','2019-03-07 19:11:52'),('Mohit Bhagwanani','mohitbhagwanani11@gmail.com','mihir.tuli01@gmialcom','ENG17CS0130','2019-03-17 11:37:31'),('Harshitha Reddy','Harshithamreddy@gmial.com','kashvishah@gmail.com','ENG17CS0093','2019-05-10 07:16:25'),('Mrinal Shashwat','mrinal.Shashwat@gmail.com','mohitbhagwanani11@gmail.com','ENG17CS0131','2019-05-10 15:22:43');

UNLOCK TABLES;

DROP TABLE IF EXISTS `teacher_login`;

CREATE TABLE `teacher_login` (
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `teacher_login` WRITE;


INSERT INTO `teacher_login` VALUES ('meenakshi.kadam','yog12345','meenakshi@dsu.edu.in'),('sonal.gupta','sonal12345','sonal.gupta@dsu.edu.in'),('sonal.mehta','sonal12345','sonal@dsu.edu.in'),('supriya.angane','supriya123','supriya.angne@dsu.edu.in'),('supriya.kadam','supriya123','supriya.angne@dsu.edu.in'),('vijay.patil','vijay123','vijay.patil@dsu.edu.in');


UNLOCK TABLES;

-- Dump completed on 2018-05-11  1:02:15
