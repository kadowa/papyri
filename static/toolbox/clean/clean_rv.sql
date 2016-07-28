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
UPDATE papyri.papyri SET `fb` = "f" WHERE `fb` LIKE = "";
/*  Correct papyri with page combo (fb, f) and (fb, b) but two pages max */
UPDATE papyri.papyri SET fb="f" WHERE project_id LIKE 'p_kopt_345' AND fb LIKE 'fb';
UPDATE papyri.papyri SET fb="f" WHERE project_id LIKE 'p_g_57' AND fb LIKE 'fb';
UPDATE papyri.papyri SET fb="f" WHERE project_id LIKE 'p_g_5048' AND fb LIKE 'fb';
UPDATE papyri.papyri SET fb="b" WHERE project_id LIKE 'p_g_315' AND fb LIKE 'fb';
