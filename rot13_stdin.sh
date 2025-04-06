#!/bin/bash
# A script to apply ROT13 to text provided on standard input

while IFS= read -r line; do
  echo "$line" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
done