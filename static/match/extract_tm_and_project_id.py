#!/usr/bin/python3

import sys, re

p = re.compile("[PO]\.[^+]*")
l = sys.stdin.readline()
while l:
	tm, lang, project_id, inv, pub, ddpdpa = l.strip('\r\n').split('\t')
	inv_nos = p.findall(inv)
	project_ids = []
	for n in inv_nos:
		rv = "rv"
		if "R" in n:
			rv = "r"
		if "V" in n:
			rv = "v"
		print("\t".join(["_".join([comp.strip(" .").lower() for comp in n.split() if not (comp.lower().strip(" .") == "ro" or comp.lower().strip(" .") == "vo")]), rv, tm, n, lang]))
	l = sys.stdin.readline()
