UPDATE papyri.papyri SET p_heid_inv = "Dem." WHERE p_heid_inv = "Dem";
UPDATE papyri.papyri SET p_heid_inv = "Kopt." WHERE p_heid_inv = "Kopt";
UPDATE papyri.papyri SET p_heid_inv = "Kopt." WHERE p_heid_inv = "Kopt (?)";
UPDATE papyri.papyri SET p_heid_inv = "G" WHERE p_heid_inv = "G (?)";
UPDATE papyri.papyri SET p_heid_inv = "Hebr." WHERE p_heid_inv = "Hebr";
UPDATE papyri.papyri SET p_heid_inv = "Hier." WHERE p_heid_inv = "hier";
/* Clean individual records ('?', ',' , ...)*/
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Aram.' WHERE `id`='8193';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Aram.' WHERE `id`='8194';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Aram.' WHERE `id`='8195';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Dem.' WHERE `id`='10937';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Dem.' WHERE `id`='10938';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Dem.' WHERE `id`='10939';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Dem.' WHERE `id`='10940';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19460';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19461';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19468';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19469';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19471';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19472';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19474';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19475';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19488';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19489';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19496';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19497';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19498';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19499';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19503';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19510';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19512';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19513';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hebr.' WHERE `id`='19519';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hier.' WHERE `id`='19539';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Hier. ' WHERE `id`='19554';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Lat.' WHERE `id`='19597';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Lat.' WHERE `id`='19598';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Lat.' WHERE `id`='19602';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='19674';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='19783';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='19688';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='19837';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='19986';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='19996';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='19997';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='20004';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Kopt' WHERE `id`='20008';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Kopt' WHERE `id`='20014';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='20025';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='20037';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='20039';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='20043';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='20047';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='20240';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='20249';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='G' WHERE `id`='20352';
UPDATE `papyri`.`papyri` SET `p_heid_inv`='Dem' WHERE `id`='20357';
/* Remove trailing whitespace */
UPDATE papyri.papyri SET p_heid_inv = REPLACE(p_heid_inv, " ", "");
/* Add trailing dot to all records */
UPDATE papyri.papyri SET p_heid_inv = CONCAT(p_heid_inv, ".") WHERE p_heid_inv NOT LIKE "%.%";
/* Remove line breaks from p_heid_inv_buchstabe */
UPDATE `papyri`.`papyri` SET `p_heid_inv_buchstabe`='a-m' WHERE `id`='15360';
UPDATE `papyri`.`papyri` SET `p_heid_inv_buchstabe`='' WHERE `id`='616';
UPDATE `papyri`.`papyri` SET `p_heid_inv_buchstabe`='' WHERE `id`='615';


