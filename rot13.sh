#!/bin/bash
# A script to apply ROT13 to text provided as a command-line argument

if [ $# -eq 0 ]; then
  echo "Usage: $0 \"text to encode\""
  exit 1
fi

echo "$1" | tr 'A-Za-z' 'N-ZA-Mn-za-m'