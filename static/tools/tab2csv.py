#!/usr/bin/python
# -*- coding: utf8 -*-

import sys, datetime, codecs

with open(sys.argv[1]) as f:
	transformations = [line.strip().split('\t') for line in f.readlines()]

# Get encoding right (hopefully, still need to think about this)
stdin = sys.stdin
stdout = codecs.getwriter("utf8")(sys.stdout)

# Loop through input rows
counter = 0
l = stdin.readline()
while l:
	counter += 1
	entries = l.decode("utf8").strip('\n').split('\t')
	entries_transformed = ['"\N"'] # no primary key
	operations = [a for a, b in transformations]
	target = operations.count("KEEP")+operations.count("DELETE")
	if len(entries) != target:
		sys.stderr.write("Wrong number of entries in row {}: {} (skipping entry)\n".format(counter, len(entries)))
		l = stdin.readline()
		continue

	# Transform record
	j = 0
	for t, ttype in transformations:
		if t == "KEEP":
			e = entries[j].replace("\"", "'").replace(u'\x0b', u'\n')
			if ttype == "boolean":
				# TODO: refine (depends on possible entries in the fields)
				if e != "":
					e = "T"
				else:
					e = "F"
			if ttype == "list:string":
				l = [l.strip() for l in e.split(u'\x1d')]
				if l:
					e = "; ".join(l)
			if ttype == "date" and e != "":
				try:
					d, m, y = e.split('.')
					e = '{:04d}-{:02d}-{:02d}'.format(int(y), int(m), int(d))
				except:
					sys.stderr.write("Unabel to convert date: %s\n"%e)
			if ttype == "integer" and e != "":
				# Some BC entries have a blank between "-" and year
				e = e.replace(" ", "")
			if e == '':
				e = '\N'
			entries_transformed.append('"'+e+'"')
			j += 1
		elif t == "INSERT":
			entries_transformed.append('"\N"')
		elif t == "DELETE":
			j += 1
		elif t == "IGNORE":
			pass
		else:
			sys.stderr.write("ERROR: Invalid transform operation %s\n"%t)

	# Generate CSV output
	l = stdin.readline()
	stdout.write(','.join(entries_transformed)+'\n')
