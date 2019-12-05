#!/usr/bin/bash

fastq-dump --outdir fastq --gzip --skip-technical  --readids --read-filter pass --dumpbase --split-files --clip sra/$1.sra
