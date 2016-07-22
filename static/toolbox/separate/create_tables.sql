CREATE DATABASE  IF NOT EXISTS `papyri_sep` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `papyri_sep`;
-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: papyri
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `papyri`
--

DROP TABLE IF EXISTS `papyri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papyri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
/* Inventarisierung */
  `project_id` varchar(20) DEFAULT NULL,
  `heid_inv_cat` varchar(512) DEFAULT NULL,
  `heid_inv_spr` varchar(64) DEFAULT NULL,
  `heid_inv_nr` int(11) DEFAULT NULL,
  `heid_inv_buchstabe` varchar(128) DEFAULT NULL,
  `heid_inv` varchar(30) DEFAULT NULL,
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
  `material` varchar(64) DEFAULT NULL,
/* Sonstiges */
  `katalogisierung` varchar(64) DEFAULT NULL,
  `ausleihe` varchar(64) DEFAULT NULL,
  `vorhanden_fehlt` varchar(512) DEFAULT NULL,
  `eingegeben_am` date DEFAULT NULL,
  `zuletzt_geaendert_am` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20776 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abbildung` varchar(512) DEFAULT NULL,
  `alte_aufnahme` varchar(512) DEFAULT NULL,
  `alte_inv_nr_buchstabe` varchar(64) DEFAULT NULL,
  `alte_inv_nr_name` varchar(64) DEFAULT NULL,
  `alte_inv_nr_zahl` varchar(256) DEFAULT NULL,
  `andere_berichtigungen` varchar(512) DEFAULT NULL,
  `andere_publikation` varchar(512) DEFAULT NULL,
  `andere_seite` varchar(128) DEFAULT NULL,
  `art` varchar(128) DEFAULT NULL,
  `art_1` varchar(64) DEFAULT NULL,
  `art_2` varchar(256) DEFAULT NULL,
  `band` int(11) DEFAULT NULL,
  `bearb` char(1) DEFAULT NULL,
  `bearb_zusatz` varchar(512) DEFAULT NULL,
  `bearbeiter` varchar(512) DEFAULT NULL,
  `bemerkungen` longtext,
  `bild_importiert` char(1) DEFAULT NULL,
  `bl` varchar(256) DEFAULT NULL,
  `breite` longtext,
  `eigenart` varchar(512) DEFAULT NULL,
  `eingegeben_am` date DEFAULT NULL,
  `erg1` varchar(64) DEFAULT NULL,
  `erg2` varchar(32) DEFAULT NULL,
  `erg2hig` varchar(512) DEFAULT NULL,
  `erg1hig` varchar(512) DEFAULT NULL,
  `erhaltungszustand` longtext,
  `erw_bem` varchar(256) DEFAULT NULL,
  `erwaehnte_daten` varchar(512) DEFAULT NULL,
  `erworben_durch_jahr` varchar(32) DEFAULT NULL,
  `erworben_durch_monat` varchar(32) DEFAULT NULL,
  `erworben_durch_name` varchar(256) DEFAULT NULL,
  `fertig` char(1) DEFAULT NULL,
  `fundort` varchar(64) DEFAULT NULL,
  `gerahmte_nummer` varchar(16) DEFAULT NULL,
  `herkunft` varchar(256) DEFAULT NULL,
  `hoehe` longtext,
  `inhalt` longtext,
  `j1` int(11) DEFAULT NULL,
  `j2` int(11) DEFAULT NULL,
  `j2hig` int(11) DEFAULT NULL,
  `jh1` int(11) DEFAULT NULL,
  `jh2` int(11) DEFAULT NULL,
  `jh2hig` int(11) DEFAULT NULL,
  `jh1hig` int(11) DEFAULT NULL,
  `j1hig` int(11) DEFAULT NULL,
  `jpeg_150_dpi` varchar(512) DEFAULT NULL,
  `jpeg_72_dpi` varchar(512) DEFAULT NULL,
  `katalogisierung` varchar(64) DEFAULT NULL,
  `ldab` int(11) DEFAULT NULL,
  `link_abb` varchar(512) DEFAULT NULL,
  `literatur` longtext,
  `m1` int(11) DEFAULT NULL,
  `m2` int(11) DEFAULT NULL,
  `m2hig` varchar(64) DEFAULT NULL,
  `material` varchar(64) DEFAULT NULL,
  `mehrfach` varchar(512) DEFAULT NULL,
  `m1hig` varchar(64) DEFAULT NULL,
  `negativ` varchar(512) DEFAULT NULL,
  `neu` char(1) DEFAULT NULL,
  `notiz` varchar(500) DEFAULT NULL,
  `nummer` varchar(32) DEFAULT NULL,
  `o_heid_inv` varchar(32) DEFAULT NULL,
  `originaltitel` longtext,
  `ort` varchar(128) DEFAULT NULL,
  `p_heid_inv_erg` varchar(512) DEFAULT NULL,
  `p_heid_inv_nr` int(11) DEFAULT NULL,
  `p_heid_inv` varchar(64) DEFAULT NULL,
  `p_heid_inv_buchstabe` varchar(128) DEFAULT NULL,
  `pack2` int(11) DEFAULT NULL,
  `palaeographisches` longtext,
  `photo_an` longtext,
  `pub_sonst` varchar(512) DEFAULT NULL,
  `publ_erg` varchar(64) DEFAULT NULL,
  `publikation` varchar(512) DEFAULT NULL,
  `rueckseite` varchar(64) DEFAULT NULL,
  `rv` varchar(128) DEFAULT NULL,
  `schrift` varchar(64) DEFAULT NULL,
  `seite` varchar(32) DEFAULT NULL,
  `sprache` varchar(128) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `t1` int(11) DEFAULT NULL,
  `t2` int(11) DEFAULT NULL,
  `t2hig` varchar(512) DEFAULT NULL,
  `t1hig` varchar(64) DEFAULT NULL,
  `tiff_600_dpi` varchar(512) DEFAULT NULL,
  `titel` varchar(512) DEFAULT NULL,
  `unsicher` varchar(64) DEFAULT NULL,
  `url_abb` varchar(512) DEFAULT NULL,
  `vorhanden` char(1) DEFAULT NULL,
  `vorhanden_fehlt` varchar(512) DEFAULT NULL,
  `wochentag` varchar(32) DEFAULT NULL,
  `zuletzt_geaendert_am` date DEFAULT NULL,
  `zus_band` varchar(512) DEFAULT NULL,
  `zusatz` varchar(512) DEFAULT NULL,
  `zusaetzlich` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20776 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

