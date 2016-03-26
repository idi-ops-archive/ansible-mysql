#!/bin/bash

if [ $# -ne 2 ]; then
  echo "$0 <dir> <days>"
  exit 1
fi

DIR=$1
DAYS=$2

/usr/bin/find $DIR -name '*.xz' -mtime -${DAYS} -exec ls {};
