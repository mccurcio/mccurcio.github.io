---
title: "Bash - For Loop"
tags: Bash "For Loop"
---


- Basically, the simplest for loop syntax repeats the occurrence of a set of a variable. 

```bash
for VARIABLE in 1 2 3 4 5 .. N
    command1
    command2
done
```

- Example

Rename All files in directory to Lowercase

```bash
for i in `ls -1`; do mv $i "${i,,}" ; done
```

Explanation: move file i in the list of files `ls -l` to lower case file i.

