ALTER TABLE papyri.papyri ADD project_id VARCHAR(20) DEFAULT NULL AFTER id;
UPDATE papyri.papyri SET project_id = CONCAT_WS('_', heid_inv_cat, REPLACE(LOWER(heid_inv_spr), '.', ''), heid_inv_nr, heid_inv_buchstabe);
ALTER TABLE papyri.papyri ADD heid_inv VARCHAR(30) DEFAULT NULL AFTER ort;
UPDATE papyri.papyri SET heid_inv = CONCAT_WS(' ', CONCAT(UPPER(heid_inv_cat), '. Heid. Inv.'), heid_inv_spr, heid_inv_nr, heid_inv_buchstabe);