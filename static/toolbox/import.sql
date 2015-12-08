USE papyri;
LOAD DATA LOCAL INFILE '/workspace/web2py/applications/papyri/static/import/arab.csv' INTO TABLE papyri.papyri CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/workspace/web2py/applications/papyri/static/import/aram.csv' INTO TABLE papyri.papyri CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/workspace/web2py/applications/papyri/static/import/cop.csv' INTO TABLE papyri.papyri CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/workspace/web2py/applications/papyri/static/import/dem.csv' INTO TABLE papyri.papyri CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/workspace/web2py/applications/papyri/static/import/gr.csv' INTO TABLE papyri.papyri CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/workspace/web2py/applications/papyri/static/import/hebr.csv' INTO TABLE papyri.papyri CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/workspace/web2py/applications/papyri/static/import/hier.csv' INTO TABLE papyri.papyri CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/workspace/web2py/applications/papyri/static/import/lat.csv' INTO TABLE papyri.papyri CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/workspace/web2py/applications/papyri/static/import/ostr.csv' INTO TABLE papyri.papyri CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/workspace/web2py/applications/papyri/static/import/pah.csv' INTO TABLE papyri.papyri CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/workspace/web2py/applications/papyri/static/import/syr.csv' INTO TABLE papyri.papyri CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';


