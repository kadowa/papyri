SELECT papyri1.dwork_id, papyri1.id, papyri1.fb, papyri2.id, papyri2.fb, papyri2.andere_seite
FROM papyri.papyri AS papyri1
INNER JOIN papyri.papyri AS papyri2 ON (papyri1.dwork_id=papyri2.dwork_id) 
WHERE papyri1.fb LIKE "fb" AND papyri2.id NOT LIKE papyri1.id;
