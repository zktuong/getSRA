#!/usr/bin/bash
while getopts ":l:" opt; do
  case $opt in
    l)
      cat $OPTARG | xargs -n 1 bash prefetch_.sh >&2      
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

for file in sra/*
do
  n=$(basename $file)
  echo "Processing ${n}"
  fasterq-dump --outdir fastq --gzip --split-3 sra/${n}/${n}.sra
  rm -rf sra/${n}
  echo
done
