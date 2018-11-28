/*
SQLyog Community v13.1.0 (64 bit)
MySQL - 8.0.13 : Database - shop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shop` /*!40100 DEFAULT CHARACTER SET gbk */;

USE `shop`;

/*Table structure for table `classify` */

DROP TABLE IF EXISTS `classify`;

CREATE TABLE `classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Data for the table `classify` */

insert  into `classify`(`id`,`name`) values 
(1,'兰蔻'),
(2,'娇兰'),
(3,'雅思兰黛');

/*Table structure for table `cosmeticform` */

DROP TABLE IF EXISTS `cosmeticform`;

CREATE TABLE `cosmeticform` (
  `cosmetic_number` char(255) NOT NULL,
  `cosmetic_name` char(255) DEFAULT NULL,
  `cosmetic_made` char(255) DEFAULT NULL,
  `cosmetic_price` float DEFAULT NULL,
  `cosmetic_mess` char(255) DEFAULT NULL,
  `cosmetic_pic` char(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cosmetic_number`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `cosmeticform` */

insert  into `cosmeticform`(`cosmetic_number`,`cosmetic_name`,`cosmetic_made`,`cosmetic_price`,`cosmetic_mess`,`cosmetic_pic`,`id`) values 
('EsteeLauder1001','雅思兰黛眼霜','EsteeLauder',389,'功效：去黑眼圈，去眼斑','est1.jpg',3),
('lan_a1001','兰蔻轻滢柔肤水','法国Lancome',229,'化妆品净含量：400g','lan1.jpg',1),
('lan_a1002','兰蔻乳液','法国Lancome',588,'乳液功能：补水，保湿','lan2.jpg',1);

/*Table structure for table `orderform` */

DROP TABLE IF EXISTS `orderform`;

CREATE TABLE `orderform` (
  `id` int(10) NOT NULL,
  `logname` char(255) DEFAULT NULL,
  `mess` char(255) DEFAULT NULL,
  `sum` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `orderform` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `logname` char(255) NOT NULL,
  `password` char(255) DEFAULT NULL,
  `phone` char(255) DEFAULT NULL,
  `address` char(255) DEFAULT NULL,
  `realname` char(255) DEFAULT NULL,
  PRIMARY KEY (`logname`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
