---
title: "Bash - Grep - Find file name in sub directories"
tags: Bash Grep
---

Find a specific file name in large directories

mcc29th November 2021 at 8:37pm

Find text inside a list of files and output the filename when a match occurs. Recurse and case-insensitive:
-i - Ignore case distinctions
-r - Recursive
-l - Suppress normal output; instead print the name of each input file from which output would normally have been printed. The scanning will stop on the first match.

```
grep Documentation

grep -irl foo*
```
