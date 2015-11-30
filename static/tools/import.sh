ROOT=/workspace/web2py/applications/papyri/static/
IMPORT=$ROOT/import
TOOLS=$ROOT/tools

for LANG in aram hier lat pah syr;
	do cat $IMPORT/$LANG.tsv.orig | tr "\n" " " | tr "\r" "\n" | $TOOLS/fix.py > $IMPORT/$LANG.tsv;
		cat $IMPORT/$LANG.tsv | $TOOLS/tab2csv.py $IMPORT/$LANG.tf > $IMPORT/$LANG.csv;
	done

for LANG in arab gr;
	do cat $IMPORT/$LANG.tsv.orig | tr "\n" " " | tr "\r" "\n" > $IMPORT/$LANG.tsv;
		cat $IMPORT/$LANG.tsv | $TOOLS/tab2csv.py $IMPORT/$LANG.tf > $IMPORT/$LANG.csv;
	done
