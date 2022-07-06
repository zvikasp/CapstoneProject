/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - showtime
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `showtime`;

USE `showtime`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `avail_tab` */

DROP TABLE IF EXISTS `avail_tab`;

CREATE TABLE `avail_tab` (
  `tid_ct` varchar(10) DEFAULT NULL,
  `tname_ct` varchar(100) DEFAULT NULL,
  `screen_ct` varchar(100) DEFAULT NULL,
  `cat_ct` varchar(100) DEFAULT NULL,
  `cost_ct` double DEFAULT NULL,
  `tot_seats_ct` int(11) DEFAULT NULL,
  `avail_seats_ct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `manager_tab` */

DROP TABLE IF EXISTS `manager_tab`;

CREATE TABLE `manager_tab` (
  `rid_ct` varchar(5) DEFAULT NULL,
  `mname_ct` varchar(500) DEFAULT NULL,
  `memail_ct` varchar(500) NOT NULL,
  `mpno_ct` varchar(500) DEFAULT NULL,
  `mno_ct` varchar(500) DEFAULT NULL,
  `city_ct` varchar(100) DEFAULT NULL,
  `street_ct` varchar(100) DEFAULT NULL,
  `un_ct` varchar(100) NOT NULL DEFAULT '',
  `pwd_ct` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`un_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `movies_tab` */

DROP TABLE IF EXISTS `movies_tab`;

CREATE TABLE `movies_tab` (
  `tid_ct` varchar(10) NOT NULL,
  `tname` varchar(100) DEFAULT NULL,
  `screen_ct` varchar(100) NOT NULL,
  `movie_ct` varchar(100) NOT NULL,
  `show_ct` varchar(100) NOT NULL,
  `time_ct` varchar(100) DEFAULT NULL,
  `sdate_ct` varchar(100) DEFAULT NULL,
  `edate_ct` varchar(100) DEFAULT NULL,
  `pic_ct` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`tid_ct`,`movie_ct`,`show_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `register_tab` */

DROP TABLE IF EXISTS `register_tab`;

CREATE TABLE `register_tab` (
  `id_ct` int(10) NOT NULL,
  `name_ct` varchar(50) NOT NULL,
  `lname_ct` varchar(50) NOT NULL,
  `address_ct` varchar(500) DEFAULT NULL,
  `phone_ct` varchar(14) DEFAULT NULL,
  `email_ct` varchar(50) NOT NULL,
  `pwd_ct` varchar(50) NOT NULL,
  PRIMARY KEY (`email_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `shows_tab` */

DROP TABLE IF EXISTS `shows_tab`;

CREATE TABLE `shows_tab` (
  `tid_ct` varchar(10) DEFAULT NULL,
  `tname_ct` varchar(100) DEFAULT NULL,
  `screen_ct` varchar(100) DEFAULT NULL,
  `time_ct` varchar(100) DEFAULT NULL,
  `show_ct` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `subscribe_tab` */

DROP TABLE IF EXISTS `subscribe_tab`;

CREATE TABLE `subscribe_tab` (
  `name_ct` varchar(100) DEFAULT NULL,
  `email_ct` varchar(500) NOT NULL,
  PRIMARY KEY (`email_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `theater_tab` */

DROP TABLE IF EXISTS `theater_tab`;

CREATE TABLE `theater_tab` (
  `tid_ct` int(11) DEFAULT NULL,
  `tname_ct` varchar(100) NOT NULL,
  `screen_ct` varchar(100) NOT NULL,
  `city_ct` varchar(100) DEFAULT NULL,
  `type_ct` varchar(100) DEFAULT NULL,
  `address_ct` varchar(500) DEFAULT NULL,
  `email_ct` varchar(100) DEFAULT NULL,
  `contact_ct` varchar(100) DEFAULT NULL,
  `loc_ct` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`tname_ct`,`screen_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tickets_tab` */

DROP TABLE IF EXISTS `tickets_tab`;

CREATE TABLE `tickets_tab` (
  `tid_ct` varchar(10) NOT NULL,
  `tname_ct` varchar(100) DEFAULT NULL,
  `screen_ct` varchar(100) NOT NULL,
  `movie_ct` varchar(100) NOT NULL,
  `show_ct` varchar(100) NOT NULL,
  `time_ct` varchar(100) DEFAULT NULL,
  `date_ct` varchar(100) DEFAULT NULL,
  `cat_ct` varchar(100) DEFAULT NULL,
  `cost_ct` varchar(100) DEFAULT NULL,
  `tcost_ct` varchar(100) DEFAULT NULL,
  `tickets_ct` int(4) DEFAULT NULL,
  `name_ct` varchar(100) DEFAULT NULL,
  `email_ct` varchar(100) DEFAULT NULL,
  `ticketid_ct` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
