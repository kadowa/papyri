ALTER TABLE papyri.papyri ADD dwork_id VARCHAR(20) DEFAULT NULL AFTER breite;
UPDATE papyri.papyri SET dwork_id = CONCAT_WS('_', 'o', REPLACE(LOWER(p_heid_inv), '.', ''), p_heid_inv_nr, p_heid_inv_buchstabe) WHERE p_heid_inv > '';
UPDATE papyri.papyri SET dwork_id = CONCAT_WS('_', 'o', REPLACE(LOWER(p_heid_inv), '.', ''), p_heid_inv_nr, p_heid_inv_buchstabe) WHERE p_heid_inv > '' AND material="Ostrakon";
