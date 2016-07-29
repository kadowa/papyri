UPDATE papyri.papyri, papyri.seiten
SET papyri.front_id = seiten.id
WHERE papyri.project_id = seiten.project_id
AND seiten.fb = "f";
UPDATE papyri.papyri, papyri.seiten
SET papyri.back_id = seiten.id
WHERE papyri.project_id = seiten.project_id
AND seiten.fb = "b";
