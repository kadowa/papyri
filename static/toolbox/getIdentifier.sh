#!/bin/bash

USR="root"

# password prompt
read -s -p "Enter MySQL password for $USR: " MYSQL_PW
# add newline on stderr since we use read -s for security reasons
>&2 echo ""

echo "SELECT p_heid_inv, p_heid_inv_nr, p_heid_inv_buchstabe, rv FROM papyri.papyri;"  | mysql -u $USR --password=$MYSQL_PW ;
