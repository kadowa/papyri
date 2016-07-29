/* Rename columns */
ALTER TABLE `papyri`.`papyri` 
CHANGE COLUMN `p_heid_inv` `heid_inv_spr` VARCHAR(64) NULL DEFAULT NULL AFTER `ort`,
CHANGE COLUMN `p_heid_inv_erg` `zusammensetzung_info` VARCHAR(512) NULL DEFAULT NULL AFTER `zusatz`,
CHANGE COLUMN `p_heid_inv_nr` `heid_inv_nr` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `p_heid_inv_buchstabe` `heid_inv_buchstabe` VARCHAR(128) NULL DEFAULT NULL ;
/* Add and fill column for papyrus/ostrakon distinction */
ALTER TABLE papyri.papyri ADD `heid_inv_cat` VARCHAR(1) DEFAULT 'p' AFTER `ort`;
UPDATE papyri.papyri SET heid_inv_cat = "o" WHERE material="Ostrakon";
/* Restore record 20357 (see https://github.com/kadowa/papyri/issues/23#issuecomment-230740028) */
UPDATE `papyri`.`papyri` SET `material`='Holztafel' WHERE `id`='20357';
/* Replace empty strings with NULL */
UPDATE papyri.papyri SET heid_inv_spr = NULL WHERE heid_inv_spr = "";
UPDATE papyri.papyri SET heid_inv_buchstabe = NULL WHERE heid_inv_buchstabe = "";
/* Correct upper case entries */
UPDATE `papyri`.`papyri` SET `heid_inv_buchstabe`='a-c' WHERE `id`='17370';
UPDATE `papyri`.`papyri` SET `heid_inv_buchstabe`='b' WHERE `id`='17606';
UPDATE `papyri`.`papyri` SET `heid_inv_buchstabe`='a' WHERE `id`='17631';
UPDATE `papyri`.`papyri` SET `heid_inv_buchstabe`='a' WHERE `id`='17841';
UPDATE `papyri`.`papyri` SET `heid_inv_buchstabe`='b' WHERE `id`='17842';
/* Get rid of spaces */
UPDATE `papyri`.`papyri` SET heid_inv_buchstabe=REPLACE(heid_inv_buchstabe, " ", "") WHERE heid_inv_buchstabe > "";

