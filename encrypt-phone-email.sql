/*

ENCRYPT PHONES AND EMAILS

*/

-- Create table to encrypt

CREATE TABLE `list_of_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185559338 DEFAULT CHARSET=utf8;


-- Encrypt emails

UPDATE list_of_users
SET email = SHA2(email, 256);


-- Set phone numbers with the Spanish prefix

UPDATE list_of_users
SET phone = CONCAT('+34', phone)
WHERE phone <> '';


-- Encrypt phone numbers

UPDATE list_of_users
SET phone = SHA2(phone, 256)
WHERE phone <> '';

