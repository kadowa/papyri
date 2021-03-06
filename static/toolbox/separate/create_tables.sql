CREATE DATABASE  IF NOT EXISTS `papyri`;
USE `papyri`;
ALTER TABLE `papyri`.`papyri` RENAME TO  `papyri`.`papyri_old` ;
DROP TABLE IF EXISTS `papyri`.`papyri`;
CREATE TABLE `papyri`.`papyri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
/* Inventarisierung */
  `project_id` varchar(25) DEFAULT NULL UNIQUE,
/* Inventarisierung: Seiten */
  `front_id` int(11) DEFAULT NULL,
  `back_id` int(11) DEFAULT NULL,
  `heid_inv_cat` varchar(512) DEFAULT NULL,
  `heid_inv_spr` varchar(64) DEFAULT NULL,
  `heid_inv_nr` int(11) DEFAULT NULL,
  `heid_inv_buchstabe` varchar(128) DEFAULT NULL,
  `heid_inv` varchar(35) DEFAULT NULL,
  `alte_inv_nr_buchstabe` varchar(64) DEFAULT NULL,
  `alte_inv_nr_name` varchar(64) DEFAULT NULL,
  `alte_inv_nr_zahl` varchar(256) DEFAULT NULL,
  `eigenart` varchar(512) DEFAULT NULL,
  `gerahmte_nummer` varchar(16) DEFAULT NULL,
/* Erwerbung */
  `herkunft` varchar(256) DEFAULT NULL,
  `fundort` varchar(64) DEFAULT NULL,
  `notiz` varchar(500) DEFAULT NULL,
  `erworben_durch_name` varchar(256) DEFAULT NULL,
  `erworben_durch_monat` varchar(32) DEFAULT NULL,
  `erworben_durch_jahr` varchar(32) DEFAULT NULL,
  `erw_bem` varchar(256) DEFAULT NULL,
/* Objektdetails */
  `breite` longtext,
  `hoehe` longtext,
  `material` varchar(64) DEFAULT NULL,
  `zusammensetzung_info` varchar(512) DEFAULT NULL,
/* Sonstiges */
  `katalogisierung` varchar(64) DEFAULT NULL,
  `ausleihe` varchar(512) DEFAULT NULL,
  `vorhanden_fehlt` varchar(512) DEFAULT NULL,
  `eingegeben_am` date DEFAULT NULL,
  `zuletzt_geaendert_am` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE (project_id)
) ENGINE=InnoDB AUTO_INCREMENT=20776 DEFAULT CHARSET=utf8;
ALTER TABLE papyri.papyri AUTO_INCREMENT = 1;
INSERT INTO papyri.papyri (
	`project_id`, 
	`heid_inv_cat`, 
	`heid_inv_spr`, 
	`heid_inv_nr`, 
	`heid_inv_buchstabe`, 
	`heid_inv`, 
	`alte_inv_nr_buchstabe`, 
	`alte_inv_nr_name`, 
	`alte_inv_nr_zahl`, 
	`eigenart`, 
	`gerahmte_nummer`, 
	`herkunft`, 
	`fundort`, 
	`notiz`, 
	`erworben_durch_name`, 
	`erworben_durch_monat`, 
	`erworben_durch_jahr`, 
	`erw_bem`, 
	`breite`, 
	`hoehe`, 
	`material`, 
	`zusammensetzung_info`,
	`katalogisierung`, 
	`vorhanden_fehlt`, 
	`eingegeben_am`, 
	`zuletzt_geaendert_am`
)
SELECT 
	`project_id`, 
	`heid_inv_cat`, 
	`heid_inv_spr`, 
	`heid_inv_nr`, 
	`heid_inv_buchstabe`, 
	`heid_inv`, 
	`alte_inv_nr_buchstabe`, 
	`alte_inv_nr_name`, 
	`alte_inv_nr_zahl`, 
	`eigenart`, 
	`gerahmte_nummer`, 
	`herkunft`, 
	`fundort`, 
	`notiz`, 
	`erworben_durch_name`, 
	`erworben_durch_monat`, 
	`erworben_durch_jahr`, 
	`erw_bem`, 
	`breite`, 
	`hoehe`, 
	`material`, 
	`zusammensetzung_info`,
	`katalogisierung`, 
	`vorhanden_fehlt`, 
	`eingegeben_am`, 
	`zuletzt_geaendert_am`
FROM papyri.papyri_old GROUP BY
	`project_id`
;
DROP TABLE IF EXISTS `papyri`.`seiten`;
CREATE TABLE `papyri`.`seiten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(25) DEFAULT NULL,
  `fb` varchar(2) DEFAULT NULL,
/* Historisch */
  `rv` varchar(128) DEFAULT NULL,
  `andere_seite` varchar(128) DEFAULT NULL,
/* Publikation */
  `originaltitel` longtext,
  `band` int(11) DEFAULT NULL,
  `zus_band` varchar(512) DEFAULT NULL,
  `nummer` varchar(32) DEFAULT NULL,
  `bl` varchar(256) DEFAULT NULL,
  `seite` varchar(32) DEFAULT NULL,
  `ldab` int(11) DEFAULT NULL,
  `pack2` int(11) DEFAULT NULL,
  `abbildung` varchar(512) DEFAULT NULL,
  `andere_berichtigungen` varchar(512) DEFAULT NULL,
  `andere_publikation` varchar(512) DEFAULT NULL,
  `literatur` longtext,
  `pub_sonst` varchar(512) DEFAULT NULL,
  `publ_erg` varchar(64) DEFAULT NULL,
  `publikation` varchar(512) DEFAULT NULL,
  `andere_links` longtext,
  `tm_nummer` varchar(64) DEFAULT NULL,
  `papyri_info` longtext,
/* Textinformation */
  `art` varchar(128) DEFAULT NULL,
  `art_1` varchar(64) DEFAULT NULL,
  `art_2` varchar(256) DEFAULT NULL,
  `inhalt` longtext,
  `schrift` varchar(64) DEFAULT NULL,
  `ort` varchar(128) DEFAULT NULL,
  `palaeographisches` longtext,
/* Datierung */
  `erwaehnte_daten` varchar(512) DEFAULT NULL,
  `wochentag` varchar(32) DEFAULT NULL,
  `t1` int(11) DEFAULT NULL,
  `t2` int(11) DEFAULT NULL,
  `m1` int(11) DEFAULT NULL,
  `m2` int(11) DEFAULT NULL,
  `j1` int(11) DEFAULT NULL,
  `j2` int(11) DEFAULT NULL,
  `jh1` int(11) DEFAULT NULL,
  `jh2` int(11) DEFAULT NULL,
  `erg1` varchar(64) DEFAULT NULL,
  `erg2` varchar(32) DEFAULT NULL,
  `t1hig` varchar(64) DEFAULT NULL,
  `t2hig` varchar(512) DEFAULT NULL,
  `m1hig` varchar(64) DEFAULT NULL,
  `m2hig` varchar(64) DEFAULT NULL,
  `j1hig` int(11) DEFAULT NULL,
  `j2hig` int(11) DEFAULT NULL,
  `jh1hig` int(11) DEFAULT NULL,
  `jh2hig` int(11) DEFAULT NULL,
  `erg1hig` varchar(512) DEFAULT NULL,
  `erg2hig` varchar(512) DEFAULT NULL,
  `unsicher` varchar(64) DEFAULT NULL,
  `zusatz` varchar(512) DEFAULT NULL,
  `zusaetzlich` varchar(512) DEFAULT NULL,
/* Interne Infos */
  `bemerkungen` longtext,
  `bild_importiert` char(1) DEFAULT NULL,
  `fertig` char(1) DEFAULT NULL,
  `link_abb` varchar(512) DEFAULT NULL,
  `mehrfach` varchar(512) DEFAULT NULL,
  `neu` char(1) DEFAULT NULL,
  `titel` varchar(512) DEFAULT NULL,
  `url_abb` varchar(512) DEFAULT NULL,
/* Interne Infos: Bearbeitungsstatus */
  `status` varchar(128) DEFAULT NULL,
  `bearb` char(1) DEFAULT NULL,
  `bearb_zusatz` varchar(512) DEFAULT NULL,
  `bearbeiter` varchar(512) DEFAULT NULL,
/* Interne Infos: Photoarchiv */
  `alte_aufnahme` varchar(512) DEFAULT NULL,
  `negativ` varchar(512) DEFAULT NULL,
  `photo_an` longtext,
  `tiff_600_dpi` varchar(512) DEFAULT NULL,
  `jpeg_150_dpi` varchar(512) DEFAULT NULL,
  `jpeg_72_dpi` varchar(512) DEFAULT NULL,
/* Objektdetails */
  `rueckseite` varchar(64) DEFAULT NULL,
  `sprache` varchar(128) DEFAULT NULL,
  `erhaltungszustand` longtext,
  `bem_rest` varchar(512) DEFAULT NULL,
/* Sonstiges */
  `eingegeben_am` date DEFAULT NULL,
  `zuletzt_geaendert_am` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20776 DEFAULT CHARSET=utf8;
ALTER TABLE papyri.seiten AUTO_INCREMENT = 1;
INSERT INTO papyri.seiten (
  `project_id`,
  `fb`,
  `rv`,
  `andere_seite`,
  `originaltitel`,
  `band`,
  `zus_band`,
  `nummer`,
  `bl`,
  `seite`,
  `ldab`,
  `pack2`,
  `abbildung`,
  `andere_berichtigungen`,
  `andere_publikation`,
  `literatur`,
  `pub_sonst`,
  `publ_erg`,
  `publikation`,
  `art`,
  `art_1`,
  `art_2`,
  `inhalt`,
  `schrift`,
  `ort`,
  `palaeographisches`,
  `erwaehnte_daten`,
  `wochentag`,
  `t1`,
  `t2`,
  `m1`,
  `m2`,
  `j1`,
  `j2`,
  `jh1`,
  `jh2`,
  `erg1`,
  `erg2`,
  `t1hig`,
  `t2hig`,
  `m1hig`,
  `m2hig`,
  `j1hig`,
  `j2hig`,
  `jh1hig`,
  `jh2hig`,
  `erg1hig`,
  `erg2hig`,
  `unsicher`,
  `zusatz`,
  `zusaetzlich`,
  `bemerkungen`,
  `bild_importiert`,
  `fertig`,
  `link_abb`,
  `mehrfach`,
  `neu`,
  `titel`,
  `url_abb`,
  `status`,
  `bearb`,
  `bearb_zusatz`,
  `bearbeiter`,
  `alte_aufnahme`,
  `negativ`,
  `photo_an`,
  `tiff_600_dpi`,
  `jpeg_150_dpi`,
  `jpeg_72_dpi`,
  `rueckseite`,
  `sprache`,
  `erhaltungszustand`,
  `eingegeben_am`,
  `zuletzt_geaendert_am`
)
SELECT
  `project_id`,
  `fb`,
  `rv`,
  `andere_seite`,
  `originaltitel`,
  `band`,
  `zus_band`,
  `nummer`,
  `bl`,
  `seite`,
  `ldab`,
  `pack2`,
  `abbildung`,
  `andere_berichtigungen`,
  `andere_publikation`,
  `literatur`,
  `pub_sonst`,
  `publ_erg`,
  `publikation`,
  `art`,
  `art_1`,
  `art_2`,
  `inhalt`,
  `schrift`,
  `ort`,
  `palaeographisches`,
  `erwaehnte_daten`,
  `wochentag`,
  `t1`,
  `t2`,
  `m1`,
  `m2`,
  `j1`,
  `j2`,
  `jh1`,
  `jh2`,
  `erg1`,
  `erg2`,
  `t1hig`,
  `t2hig`,
  `m1hig`,
  `m2hig`,
  `j1hig`,
  `j2hig`,
  `jh1hig`,
  `jh2hig`,
  `erg1hig`,
  `erg2hig`,
  `unsicher`,
  `zusatz`,
  `zusaetzlich`,
  `bemerkungen`,
  `bild_importiert`,
  `fertig`,
  `link_abb`,
  `mehrfach`,
  `neu`,
  `titel`,
  `url_abb`,
  `status`,
  `bearb`,
  `bearb_zusatz`,
  `bearbeiter`,
  `alte_aufnahme`,
  `negativ`,
  `photo_an`,
  `tiff_600_dpi`,
  `jpeg_150_dpi`,
  `jpeg_72_dpi`,
  `rueckseite`,
  `sprache`,
  `erhaltungszustand`,
  `eingegeben_am`,
  `zuletzt_geaendert_am`
FROM papyri.papyri_old
ORDER BY project_id ASC, fb DESC;
DROP TABLE IF EXISTS `papyri`.`papyri_old`;
