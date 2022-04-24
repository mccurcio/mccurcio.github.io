---
title: "Bash - Rename files names to lowercase"
tags: Bash Scripting
---

Rename All files in directory to Lowercase

20th December 2017 at 10:34pm

An elegant way to rename all files in a directory to lowercase

for i in `ls -1`; do mv $i "${i,,}" ; done

Explanation: There is a lower/upper case modification build-in bash using for, for looping files through directory.

