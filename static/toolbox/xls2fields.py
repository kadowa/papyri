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
	"(": "",
	")": "",
	"/": "_"
}

custom = {
	"j": "j1",
	"m": "m1",
	"t": "t1",
	"jh": "jh1",
	"jhig": "j1hig",
	"erg": "erg1",
	"mhig": "m1hig",
	"thig": "t1hig",
	"jhhig": "jh1hig",
	"erghig": "erg1hig"
}

print """if False:
	from gluon import *
	from db import Field, define_table
	import db

db.define_table("papyri",
"""

l = sys.stdin.readline()
while l:
	entries = l.strip().split("\t")
	if len(entries) == 2:
		fname, ftype = entries
		flength = None
	else:
		fname, ftype, flength = entries
	dbname = fname.lower()
	if dbname == "delete":
		l = sys.stdin.readline()
		continue
	for orig, replacement in replacements.iteritems():
		dbname = dbname.replace(orig, replacement)
	dbname = dbname.replace("__", "_").strip(" _")
	if custom.has_key(dbname):
		dbname = custom[dbname]
	if flength:
		sys.stdout.write('\tField("%s", type="%s", label="%s", length="%s"),\n'%(dbname, ftype, fname, flength))	
	else:
		sys.stdout.write('\tField("%s", type="%s", label="%s"),\n'%(dbname, ftype, fname))
	l = sys.stdin.readline()

print ")"
