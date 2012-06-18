#!/bin/bash

/opt/hunalign-1.1/src/hunalign/hunalign -text -bisent -realign -utf /opt/hunalign-1.1/data/en-tr.dic $1 $2 > $1-$2.aln
cut -f1 $1-$2.aln > $1.aln
cut -f2 $1-$2.aln > $2.aln
rm $1-$2.aln