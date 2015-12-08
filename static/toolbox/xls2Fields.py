#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys

replacements = {
	".": "_",
	" ": "_",
	"?": "",
	":": "",
	"ä": "ae",
	"ö": "oe",
	"ü": "ue",
}

l = sys.stdin.readline()
while l:
	fname, ftype = l.strip().split("\t")
	dbname = fname.lower()
	for orig, replacement in replacements.iteritems():
		dbname = dbname.replace(orig, replacement)
	dbname = dbname.replace("__", "_").strip(" _")
	sys.stdout.write('\tField("%s", type="%s", label="%s"),\n'%(dbname, ftype, fname))
	l = sys.stdin.readline()
