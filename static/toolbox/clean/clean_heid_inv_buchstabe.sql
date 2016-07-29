UPDATE papyri.papyri SET heid_inv_buchstabe = NULL WHERE heid_inv_buchstabe = "";
UPDATE `papyri`.`papyri` SET `heid_inv_buchstabe`='a-c' WHERE `id`='17370';
UPDATE `papyri`.`papyri` SET `heid_inv_buchstabe`='b' WHERE `id`='17606';
UPDATE `papyri`.`papyri` SET `heid_inv_buchstabe`='a' WHERE `id`='17631';
UPDATE `papyri`.`papyri` SET `heid_inv_buchstabe`='a' WHERE `id`='17841';
UPDATE `papyri`.`papyri` SET `heid_inv_buchstabe`='b' WHERE `id`='17842';
UPDATE `papyri`.`papyri` SET heid_inv_buchstabe=REPLACE(heid_inv_buchstabe, " ", "") WHERE heid_inv_buchstabe > "";

