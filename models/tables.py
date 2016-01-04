if False:
	from gluon import *
	from db import Field, define_table
	import db

db.define_table("papyri",

	Field("abbildung", type="string", label="Abbildung", length="512"),
	Field("alte_aufnahme", type="string", label="alte Aufnahme", length="512"),
	Field("alte_inv_nr_buchstabe", type="string", label="alte Inv. Nr. Buchstabe", length="64"),
	Field("alte_inv_nr_name", type="string", label="alte Inv. Nr. Name", length="64"),
	Field("alte_inv_nr_zahl", type="string", label="alte Inv. Nr. Zahl", length="256"),
	Field("andere_berichtigungen", type="string", label="Andere Berichtigungen", length="512"),
	Field("andere_publikation", type="string", label="Andere Publikation"),
	Field("andere_seite", type="string", label="andere Seite", length="128"),
	Field("art", type="string", label="Art", length="128"),
	Field("art_1", type="string", label="Art 1", length="64"),
	Field("art_2", type="string", label="Art 2", length="256"),
	Field("band", type="integer", label="Band", length="8"),
	Field("bearb", type="boolean", label="bearb.?", length="4"),
	Field("bearb_zusatz", type="string", label="bearb_zusatz"),
	Field("bearbeiter", type="string", label="Bearbeiter", length="512"),
	Field("bemerkungen", type="text", label="Bemerkungen"),
	Field("bild_importiert", type="boolean", label="Bild importiert?", length="4"),
	Field("bl", type="string", label="BL", length="256"),
	Field("breite", type="list:string", label="Breite"),
	Field("eigenart", type="string", label="Eigenart"),
	Field("eingegeben_am", type="date", label="eingegeben am", length="32"),
	Field("erg1", type="string", label="Erg", length="64"),
	Field("erg2", type="string", label="Erg2", length="32"),
	Field("erg2hig", type="string", label="Erg2Hig"),
	Field("erg1hig", type="string", label="ErgHig"),
	Field("erhaltungszustand", type="text", label="Erhaltungszustand"),
	Field("erw_bem", type="string", label="Erw.Bem.", length="256"),
	Field("erwaehnte_daten", type="string", label="Erwähnte Daten"),
	Field("erworben_durch_jahr", type="string", label="erworben durch: Jahr", length="32"),
	Field("erworben_durch_monat", type="string", label="erworben durch: Monat", length="32"),
	Field("erworben_durch_name", type="string", label="erworben durch: Name", length="256"),
	Field("fertig", type="boolean", label="fertig", length="4"),
	Field("fundort", type="string", label="Fundort", length="64"),
	Field("gerahmte_nummer", type="string", label="gerahmte Nummer", length="16"),
	Field("herkunft", type="string", label="Herkunft", length="256"),
	Field("hoehe", type="list:string", label="Hoehe"),
	Field("inhalt", type="text", label="Inhalt"),
	Field("j1", type="integer", label="J", length="16"),
	Field("j2", type="integer", label="J2", length="16"),
	Field("j2hig", type="integer", label="J2Hig", length="16"),
	Field("jh1", type="integer", label="Jh", length="8"),
	Field("jh2", type="integer", label="Jh2", length="8"),
	Field("jh2hig", type="integer", label="Jh2Hig", length="8"),
	Field("jh1hig", type="integer", label="JhHig", length="8"),
	Field("j1hig", type="integer", label="JHig", length="16"),
	Field("jpeg_150_dpi", type="string", label="JPEG (150 dpi)"),
	Field("jpeg_72_dpi", type="string", label="JPEG (72 dpi)"),
	Field("katalogisierung", type="string", label="Katalogisierung", length="64"),
	Field("ldab", type="integer", label="LDAB", length="16"),
	Field("link_abb", type="string", label="Link Abb."),
	Field("literatur", type="text", label="Literatur"),
	Field("m1", type="integer", label="M", length="8"),
	Field("m2", type="integer", label="M2", length="8"),
	Field("m2hig", type="string", label="M2Hig", length="64"),
	Field("material", type="string", label="Material", length="64"),
	Field("mehrfach", type="string", label="Mehrfach"),
	Field("m1hig", type="string", label="MHig", length="64"),
	Field("negativ", type="string", label="Negativ"),
	Field("neu", type="boolean", label="Neu?", length="4"),
	Field("notiz", type="string", label="Notiz", length="128"),
	Field("nummer", type="string", label="Nummer", length="32"),
	Field("o_heid_inv", type="string", label="O.Heid. Inv.", length="32"),
	Field("originaltitel", type="text", label="Originaltitel"),
	Field("ort", type="string", label="Ort", length="128"),
	Field("p_heid_inv_erg", type="string", label="P_Heid_Inv_Erg"),
	Field("p_heid_inv_nr", type="integer", label="P_Heid_Inv_Nr", length="16"),
	Field("p_heid_inv", type="string", label="P.Heid. Inv.", length="64"),
	Field("p_heid_inv_buchstabe", type="string", label="P.Heid. Inv. Buchstabe", length="128"),
	Field("pack2", type="integer", label="Pack2", length="16"),
	Field("palaeographisches", type="text", label="Paläographisches"),
	Field("photo_an", type="text", label="Photo an"),
	Field("pub_sonst", type="string", label="Pub sonst"),
	Field("publ_erg", type="string", label="Publ_Erg", length="64"),
	Field("publikation", type="string", label="Publikation"),
	Field("rueckseite", type="string", label="Rückseite", length="64"),
	Field("rv", type="string", label="RV", length="128"),
	Field("schrift", type="string", label="Schrift", length="64"),
	Field("seite", type="string", label="Seite", length="32"),
	Field("sprache", type="string", label="Sprache", length="128"),
	Field("status", type="string", label="Status", length="128"),
	Field("t1", type="integer", label="T", length="8"),
	Field("t2", type="integer", label="T2", length="8"),
	Field("t2hig", type="string", label="T2Hig"),
	Field("t1hig", type="string", label="THig", length="64"),
	Field("tiff_600_dpi", type="string", label="TIFF (600 dpi)"),
	Field("titel", type="string", label="Titel"),
	Field("unsicher", type="string", label="unsicher:", length="64"),
	Field("url_abb", type="string", label="URL Abb.", length="512"),
	Field("vorhanden", type="boolean", label="Vorhanden"),
	Field("vorhanden_fehlt", type="string", label="Vorhanden/Fehlt"),
	Field("wochentag", type="string", label="Wochentag", length="32"),
	Field("zuletzt_geaendert_am", type="date", label="zuletzt geändert am", length="32"),
	Field("zus_band", type="string", label="Zus_Band"),
	Field("zusatz", type="string", label="Zusatz:"),
	Field("zusaetzlich", type="string", label="zusätzlich"),
)
