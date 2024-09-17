CREATE TABLE IF NOT EXISTS `Phone_Types` (
  `id_phone_type` int(10) AUTO_INCREMENT NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id_phone_type`)
);

CREATE TABLE IF NOT EXISTS `States` (
  `id_state` int(10) AUTO_INCREMENT NOT NULL,
  `UF` varchar(2) NOT NULL,
  PRIMARY KEY (`id_state`)
);

CREATE TABLE IF NOT EXISTS `Clients` (
  `id_client` int(10) AUTO_INCREMENT NOT NULL,
  `name` varchar(255) NOT NULL,
  `fk_id_state` int(10) NOT NULL,
  PRIMARY KEY (`id_client`),
  CONSTRAINT `Clients_fk_id_state_States_id_state_foreign` FOREIGN KEY (`fk_id_state`) REFERENCES `States` (`id_state`)
);

CREATE TABLE IF NOT EXISTS `Phones` (
  `id_phone` int(10) AUTO_INCREMENT NOT NULL,
  `number` varchar(15) NOT NULL,
  `fk_id_client` int(10) NOT NULL,
  `fk_id_phone_type` int(10) NOT NULL,
  PRIMARY KEY (`id_phone`),
  CONSTRAINT `Phones_fk_id_client_Clients_id_client_foreign` FOREIGN KEY (`fk_id_client`) REFERENCES `Clients` (`id_client`),
  CONSTRAINT `Phones_fk_id_phone_type_Phone_Types_id_phone_type_foreign` FOREIGN KEY (`fk_id_phone_type`) REFERENCES `Phone_Types` (`id_phone_type`)
);