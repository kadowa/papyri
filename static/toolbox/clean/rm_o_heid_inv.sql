UPDATE papyri.papyri SET p_heid_inv = o_heid_inv WHERE o_heid_inv > '';
UPDATE papyri.papyri SET sprache = o_heid_inv WHERE o_heid_inv > '';
ALTER TABLE papyri.papyri DROP o_heid_inv;
