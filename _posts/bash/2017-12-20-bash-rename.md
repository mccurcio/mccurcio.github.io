---
title: "Bash - Rename files names to lowercase"
date: 2017-12-20
tags: Bash 
---

Rename All files in directory to Lowercase - Scripting

An elegant way to rename all files in a directory to lowercase

```
for i in `ls -1`; do mv $i "${i,,}" ; done
```

Explanation: There is a lower/upper case modification build-in bash using for, for looping files through directory.

