if False:
    from gluon import *
    from db import *
    import db

from _dbus_bindings import String

db.define_table("papyri",
    Field("abbildung", type="text", label="Abbildung"),
    Field("alte_aufnahme", type="text", label="alte Aufnahme"),
    Field("alte_inv_nr_buchstabe", type="text", label="alte Inv. Nr. Buchstabe"),
    Field("alte_inv_nr_name", type="text", label="alte Inv. Nr. Name"),
    Field("alte_inv_nr_zahl", type="integer", label="alte Inv. Nr. Zahl"),
    Field("andere_berichtigungen", type="text", label="Andere Berichtigungen"),
    Field("andere_publikation", type="text", label="Andere Publikation"),
    Field("andere_seite", type="text", label="andere Seite"),
    Field("art", type="text", label="Art"),
    Field("art_1", type="text", label="Art 1"),
    Field("art_2", type="text", label="Art 2"),
    Field("band", type="integer", label="Band"),
    Field("bearb", type="boolean", label="bearb.?"),
    Field("bearb_zusatz", type="text", label="bearb_zusatz"),
    Field("bearbeiter", type="text", label="Bearbeiter"),
    Field("bemerkungen", type="text", label="Bemerkungen"),
    Field("bild_importiert", type="boolean", label="Bild importiert?"),
    Field("bl", type="text", label="BL"),
    Field("breite", type="list:string", label="Breite"),
    Field("eigenart", type="text", label="Eigenart"),
    Field("eingegeben_am", type="date", label="eingegeben am"),
    Field("erg1", type="text", label="Erg"),
    Field("erg2", type="text", label="Erg2"),
    Field("erg2hig", type="text", label="Erg2Hig"),
    Field("erghig", type="text", label="ErgHig"),
    Field("erhaltungszustand", type="text", label="Erhaltungszustand"),
    Field("erw_bem", type="text", label="Erw.Bem."),
    Field("erwaehnte_daten", type="text", label="Erwähnte Daten"),
    Field("erworben_durch_jahr", type="integer", label="erworben durch: Jahr"),
    Field("erworben_durch_monat", type="integer", label="erworben durch: Monat"),
    Field("erworben_durch_name", type="text", label="erworben durch: Name"),
    Field("fertig", type="boolean", label="fertig"),
    Field("fundort", type="text", label="Fundort"),
    Field("gerahmte_nummer", type="text", label="gerahmte Nummer"),
    Field("herkunft", type="text", label="Herkunft"),
    Field("hoehe", type="list:string", label="Hoehe"),
    Field("inhalt", type="text", label="Inhalt"),
    Field("j1", type="integer", label="J"),
    Field("j2", type="integer", label="J2"),
    Field("j2hig", type="integer", label="J2Hig"),
    Field("jh1", type="integer", label="Jh"),
    Field("jh2", type="integer", label="Jh2"),
    Field("jh2hig", type="integer", label="Jh2Hig"),
    Field("jh1hig", type="integer", label="JhHig"),
    Field("j1hig", type="integer", label="JHig"),
    Field("katalogisierung", type="text", label="Katalogisierung"),
    Field("ldab", type="integer", label="LDAB"),
    Field("link_abb", type="text", label="Link Abb."),
    Field("literatur", type="text", label="Literatur"),
    Field("m1", type="integer", label="M"),
    Field("m2", type="integer", label="M2"),
    Field("m2hig", type="integer", label="M2Hig"),
    Field("material", type="text", label="Material"),
    Field("mehrfach", type="text", label="Mehrfach"),
    Field("m1hig", type="integer", label="MHig"),
    Field("negativ", type="text", label="Negativ"),
    Field("neu", type="boolean", label="Neu?"),
    Field("notiz", type="text", label="Notiz"),
    Field("nummer", type="integer", label="Nummer"),
    Field("o_heid_inv", type="integer", label="O.Heid. Inv."),
    Field("originaltitel", type="text", label="Originaltitel"),
    Field("ort", type="text", label="Ort"),
    Field("p_heid_inv_erg", type="text", label="P_Heid_Inv_Erg"),
    Field("p_heid_inv_nr", type="integer", label="P_Heid_Inv_Nr"),
    Field("p_heid_inv", type="text", label="P.Heid. Inv."),
    Field("p_heid_inv_buchstabe", type="text", label="P.Heid. Inv. Buchstabe"),
    Field("pack2", type="integer", label="Pack2"),
    Field("palaeographisches", type="text", label="Paläographisches"),
    Field("photo_an", type="text", label="Photo an"),
    Field("pub_sonst", type="text", label="Pub sonst"),
    Field("publ_erg", type="text", label="Publ_Erg"),
    Field("publikation", type="text", label="Publikation"),
    Field("rueckseite", type="text", label="Rückseite"),
    Field("rv", type="text", label="RV"),
    Field("schrift", type="text", label="Schrift"),
    Field("seite", type="text", label="Seite"),
    Field("sprache", type="text", label="Sprache"),
    Field("status", type="text", label="Status"),
    Field("t1", type="integer", label="T"),
    Field("t2", type="integer", label="T2"),
    Field("t2hig", type="integer", label="T2Hig"),
    Field("t1hig", type="integer", label="THig"),
    Field("titel", type="text", label="Titel"),
    Field("unsicher", type="text", label="unsicher:"),
    Field("url_abb", type="text", label="URL Abb."),
    Field("vorhanden", type="text", label="Vorhanden"),
    Field("wochentag", type="text", label="Wochentag"),
    Field("zuletzt_geaendert_am", type="date", label="zuletzt geändert am"),
    Field("zus_band", type="text", label="Zus_Band"),
    Field("zusatz", type="text", label="Zusatz:"),
    Field("zusaetzlich", type="text", label="zusätzlich"),
)
