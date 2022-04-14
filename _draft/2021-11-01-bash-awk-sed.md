---
title: "Generate random texts w/ Awk+Sed"
tags: Bash Awk Sed
---


Generate random texts w/ Awk+Sed

mcc29th November 2021 at 8:56pm

Generates random texts - VERY COOL

Unix - tr - transliterate

tr -dc a-z1-4 </dev/urandom | tr 1-2 ' \n' | awk 'length==0 || length>50' | tr 3-4 ' ' | sed 's/^ *//' | cat -s | fmt > random.txt

One problem is it does not stop or shunt to file.

cat *.txt > /tmp/output.txt




