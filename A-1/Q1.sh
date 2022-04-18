#!/usr/bin/bash
grep . quotes.txt > temp.txt
awk '!a[$0]++' temp.txt
rm temp.txt