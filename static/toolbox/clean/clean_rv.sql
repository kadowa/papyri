ALTER TABLE papyri.papyri ADD `fb` VARCHAR(2) DEFAULT "f" AFTER `erworben_durch_name`;
UPDATE papyri.papyri SET fb = "f" WHERE rv = "Vorderseite";
UPDATE papyri.papyri SET fb = "f" WHERE rv = "Recto";
UPDATE papyri.papyri SET fb = "f" WHERE rv LIKE "Haarseite%";
UPDATE papyri.papyri SET fb = "b" WHERE rv = "Rückseite";
UPDATE papyri.papyri SET fb = "b" WHERE rv = "Verso";
UPDATE papyri.papyri SET fb = "b" WHERE rv LIKE "Fleischseite%";
UPDATE papyri.papyri SET fb = "fb" WHERE rv = "Vorderseite u. Rückseite";
UPDATE papyri.papyri SET fb = "fb" WHERE rv = "Recto u. Verso";
UPDATE papyri.papyri SET fb = "fb" WHERE rv = "Haarseite u. Fleischseite";
/* Correct empty values (no idea where they are coming from actually */
UPDATE papyri.papyri SET `fb` = "f" WHERE `fb` LIKE "";
/* Correct papyri with page combo ('fb', 'f') and ('fb', 'b') but two pages max */
UPDATE papyri.papyri SET fb="f" WHERE project_id LIKE 'p_kopt_345' AND fb LIKE 'fb';
UPDATE papyri.papyri SET fb="f" WHERE project_id LIKE 'p_g_57' AND fb LIKE 'fb';
UPDATE papyri.papyri SET fb="f" WHERE project_id LIKE 'p_g_5048' AND fb LIKE 'fb';
UPDATE papyri.papyri SET fb="b" WHERE project_id LIKE 'p_g_315' AND fb LIKE 'fb';
/* Set fb to NULL for papyri that have pages marked 'f', 'b' and 'fb' */
UPDATE papyri.papyri SET fb=NULL WHERE project_id IN ('p_aram_2', 'p_hebr_10', 'p_hebr_11', 'p_hebr_13', 'p_hebr_14', 'p_hebr_16', 'p_hebr_2', 'p_hebr_21', 'p_hebr_26', 'p_hebr_27', 'p_hebr_28', 'p_hebr_29', 'p_hebr_30', 'p_hebr_31', 'p_hebr_32', 'p_hebr_33', 'p_hebr_4', 'p_hebr_5', 'p_hebr_6', 'p_hebr_7', 'p_hebr_8') AND fb LIKE "fb";
