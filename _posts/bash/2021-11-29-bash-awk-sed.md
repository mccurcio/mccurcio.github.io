---
title: "Generate random texts w/ awk + sed"
tags: Bash Awk Sed
---


Generate random texts w/ awk+sed

- Generates random texts - VERY COOL

- `tr` - transliterate

```
tr -dc a-z1-4 </dev/urandom | tr 1-2 ' \n' | awk 'length==0 || length>50' | tr 3-4 ' ' | sed 's/^ *//' | cat -s | fmt > random.txt
```

One problem is it does not stop or shunt to file.

```
cat *.txt > /tmp/output.txt
```
