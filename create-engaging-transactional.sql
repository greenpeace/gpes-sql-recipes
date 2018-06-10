/*

CREATE A TABLE TO IMPORT TRANSACTIONAL DATA FROM ENGAGING NETWORKS

*/
CREATE TABLE `en_transactional` (
  `Transaction_Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Do not import',
  `Supporter_ID` int(10) DEFAULT NULL,
  `Date_Created` date DEFAULT NULL,
  `Date_Modified` date DEFAULT NULL,
  `Campaign_Number` int(6) DEFAULT NULL,
  `Campaign_Type` varchar(5) DEFAULT NULL,
  `Campaign_ID` varchar(25) DEFAULT NULL,
  `Campaign_Date` date DEFAULT NULL,
  `Campaign Time` varchar(8) DEFAULT NULL,
  `Campaign_Data_32` varchar(255) DEFAULT NULL COMMENT 'Mobile dev',
  `Campaign Data 33` varchar(512) DEFAULT NULL COMMENT 'URL',
  `utm_source` varchar(32) DEFAULT NULL,
  `utm_medium` varchar(32) DEFAULT NULL,
  `utm_campaign` varchar(32) DEFAULT NULL,
  `utm_content` varchar(32) DEFAULT NULL,
  `utm_term` varchar(32) DEFAULT NULL,
  `GCLID` varchar(128) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `uagent` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `id_number` varchar(10) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(32) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `contact_codes` varchar(256) DEFAULT NULL,
  `SFDC_Contact_ID` varchar(32) DEFAULT NULL,
  `SFDC_Lead_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`Transaction_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

