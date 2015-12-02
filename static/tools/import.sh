# -*- coding: utf8 -*-

ROOT=/workspace/web2py/applications/papyri/static/
IMPORT=$ROOT/import
TOOLS=$ROOT/tools

declare -A languages

languages=(["aram"]="Aramäisch" ["lat"]="Lateinisch" ["pah"]="Pahlevi" ["syr"]="Syrisch" ["hier"]="Hieratisch" ["hebr"]="Hebräisch" ["ostr"]="Griechisch")

for LANG in aram lat syr pah hier hebr ostr;
	do cat $IMPORT/$LANG.tsv.orig | tr "\n" " " | tr "\r" "\n" > $IMPORT/$LANG.tsv;
		cat $IMPORT/$LANG.tsv | $TOOLS/tab2csv.py $IMPORT/$LANG.tf -l ${languages["$LANG"]} -i 77 > $IMPORT/$LANG.csv;
	done

for LANG in arab gr dem cop;
	do cat $IMPORT/$LANG.tsv.orig | tr "\n" " " | tr "\r" "\n" > $IMPORT/$LANG.tsv;
		cat $IMPORT/$LANG.tsv | $TOOLS/tab2csv.py $IMPORT/$LANG.tf > $IMPORT/$LANG.csv;
	done
