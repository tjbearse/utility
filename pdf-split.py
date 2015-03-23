#!/usr/bin/env python
# adapted from http://unix.stackexchange.com/questions/12482/split-pages-in-pdf

import copy, sys, argparse
from pyPdf import PdfFileWriter, PdfFileReader
parser = argparse.ArgumentParser(description='Splits pdfs')
parser.add_argument('--input', '-i', help="input file")
parser.add_argument('--output', '-o', help="output file")
parser.add_argument('--offset', help="percentage of page width to push split right ward")
args = parser.parse_args()

input = None
if args.input:
    input = PdfFileReader(open(args.input, 'r'))
else:
    input = PdfFileReader(sys.stdin)

offset = float(args.offset) if args.offset else 0
output = PdfFileWriter()
for p in [input.getPage(i) for i in range(0,input.getNumPages())]:
    q = copy.copy(p)
    (w, h) = p.mediaBox.upperRight
    print w, h
    p.mediaBox.upperRight = ((w/2) + w*offset, h)
    q.mediaBox.upperLeft = ((w/2) + w*offset, h)
    output.addPage(p)
    output.addPage(q)
if args.output:
    output.write(open(args.output, 'w'))
else:
    output.write(sys.stdout)
