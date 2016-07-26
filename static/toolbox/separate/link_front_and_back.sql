SELECT 
	papyri.`project_id`, 
	p1.id,
	p1.project_id,
	p1.fb,
	p2.id,
	p2.project_id,
	p2.fb
FROM papyri.papyri 
LEFT JOIN papyri_new.pages AS p1 ON papyri.project_id = p1.project_id AND p1.fb LIKE "f"
LEFT JOIN papyri_new.pages AS p2 ON papyri.project_id = p2.project_id AND p2.fb LIKE "b"
;
