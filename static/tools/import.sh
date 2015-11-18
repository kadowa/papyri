cat ../import/gr.tab.orig | tr "\n" " " | tr "\r" "\n" > ../import/gr.tab
cat ../import/gr.tab | ./tab2csv.py ../import/gr.tf > ../import/papyri_new.csv
mysqlimport --local --verbose --fields-enclosed-by='"' --fields-terminated-by=',' --lines-terminated-by='\n' --user=root --password papyri ../import/papyri_new.csv
