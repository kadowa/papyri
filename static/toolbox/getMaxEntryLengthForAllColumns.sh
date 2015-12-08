#!/bin/bash

USR="root"

# password prompt
read -s -p "Enter MySQL password for $USR: " MYSQL_PW
# add newline on stderr since we use read -s for security reasons
>&2 echo ""

# loop over all columns in papyri table, remove first line which only containes "Field"
for COLUMN_NAME in `echo "DESCRIBE papyri.papyri" | mysql -u $USR --password=$MYSQL_PW | cut -f 1 | sed 1d `; do
	# get length of longest entry from papyri database, remove first line (contains the count title), add column title on the same line
	echo "SELECT MAX(LENGTH($COLUMN_NAME)) FROM papyri.papyri;" | mysql -u $USR --password=$MYSQL_PW | sed 1d | paste <(echo "$COLUMN_NAME") -;
done
