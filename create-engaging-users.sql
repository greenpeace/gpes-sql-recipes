/*

CREATE A TABLE TO IMPORT USER DATA FROM ENGAGING NETWORKS

*/
CREATE TABLE `en_users` (
  `Supporter_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Date Created` varchar(10) DEFAULT NULL,
  `Date_Modified` varchar(10) DEFAULT NULL,
  `Suppressed` varchar(1) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `title` varchar(18) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `id_number` varchar(10) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(32) DEFAULT NULL,
  `address_1` varchar(128) DEFAULT NULL,
  `address_2` varchar(128) DEFAULT NULL,
  `address_3` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `region` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `language_pref` varchar(5) DEFAULT NULL,
  `contact_codes` varchar(128) DEFAULT NULL,
  `SFDC_Contact_ID` varchar(32) DEFAULT NULL,
  `SFDC_Lead_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`Supporter_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
