#!/usr/bin/bash

while getopts ":l:" opt; do
  case $opt in
    l)
      cat $OPTARG | xargs -n 1 bash prefetch_fastqdump.sh >&2
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done