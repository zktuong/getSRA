#!/usr/bin/bash

while getopts ":l:" opt; do
  case $opt in
    l)
      cat $OPTARG | xargs -n 1 bash fastq_dump.sh >&2
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done
