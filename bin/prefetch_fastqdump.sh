#!/usr/bin/bash

prefetch -v -O sra $1
fastq-dump --outdir fastq --gzip --split-3 sra/$1/$1.sra
