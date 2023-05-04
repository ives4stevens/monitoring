#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename="$1"

if [ ! -f "$filename" ]; then
  echo "File not found: $filename"
  exit 1
fi

sed -i 's/namespace: ingress-nginx/namespace: monitoring/g' "$filename"

