/*

CREATE A TABLE TO IMPORT USER DATA FROM ENGAGING NETWORKS (GDPR)

*/
CREATE TABLE `en_users` (
  `Supporter_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Date_Created` varchar(10) DEFAULT NULL,
  `Date_Modified` varchar(10) DEFAULT NULL,
  `Suppressed` varchar(1) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `id_number` varchar(10) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL,
  `contact_codes` varchar(128) DEFAULT NULL,
  `SFDC_Contact_ID` varchar(32) DEFAULT NULL,
  `SFDC_Lead_ID` varchar(32) DEFAULT NULL,
  `real_email_ok` varchar(1) DEFAULT NULL,
  `soft_bounce` varchar(1) DEFAULT NULL,
  `privacy_email_sent` varchar(1) DEFAULT NULL,
  `to_delete` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`Supporter_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

