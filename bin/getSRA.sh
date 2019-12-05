#!/usr/bin/bash
while getopts ":l:" opt; 
do
  case $opt in
    l)
      cat $OPTARG | xargs -n 1 bash prefetch_.sh >&2      
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

COUNT_VMS=6
(( STATUS = 100 / COUNT_VMS ))
(( MODULO = 100 % COUNT_VMS ))
COUNTER=1

for file in sra/*
do
  (( DIFF = 100 - (TOTAL = STATUS * COUNTER++ + MODULO )))
  clear
  line="[$(yes "=" | head -n $TOTAL)$(yes " " | head -n $DIFF)] $TOTAL%"
  echo -n -e "$line" | tr -d "\n"
  sleep 2
  n=$(basename $file)
  fastq-dump --outdir fastq --gzip --split-3 sra/$n/$n.sra
done