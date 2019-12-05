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

while getopts ":l:" opt; do
  case $opt in
    l)
      cat $OPTARG | xargs -n 1 bash fastq-dump_.sh >&2
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done
