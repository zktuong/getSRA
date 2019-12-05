#!/usr/bin/bash

prefetch -v -O sra $1
fastq-dump --outdir fastq --gzip --skip-technical --readids --read-filter pass --dumpbase --split-files --clip sra/$1.sra
