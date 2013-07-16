#!/usr/bin/env python

from sys import argv
import html2text

file_name = argv[1]
fh        = open(file_name)
contents  = fh.read()
fh.close()

print html2text.html2text(contents)
