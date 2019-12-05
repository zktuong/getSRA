#!/usr/bin/bash

fastq-dump --outdir fastq --gzip --split-3 sra/$1/$1.sra