#!/usr/bin/python
# -*- coding: utf8 -*-

"""
Fix Syr,Aram, Lat, Pah, Hier .tsv files: Add column "sprache" and move content of p_heid_inv_nr
to the new column. 
"""

import sys, datetime, codecs

# Get encoding right (hopefully, still need to think about this)
stdin = sys.stdin
stdout = codecs.getwriter("utf8")(sys.stdout)

index = 55
insert = 68

# Loop through input rows
counter = 0
l = stdin.readline()
while l:
    counter += 1
    entries = l.decode("utf8").strip('\n').split('\t')

    sys.stderr.write("Language: "+entries[index]+"\n")
    
    entries.insert(insert, entries[index])
    entries[index] = ""

    stdout.write('\t'.join(entries)+'\n')
    
    # Generate TSV output
    l = stdin.readline()
