cat GriechAlle.tab.CR | tr "\n" " " | tr "\r" "\n" > GriechAlle.tab.LF.clean
cat GriechAlle.tab.LF.clean | ./web2py_data.py web2py_data_gr.tab > papyri_new.csv
mysqlimport --local --verbose --fields-enclosed-by='"' --fields-terminated-by=',' --lines-terminated-by='\n' --user=root --password papyri /home/kw/Dokumente/papyri/papyri_new.csv
