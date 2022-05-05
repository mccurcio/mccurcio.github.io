---
title: "Bash - For Loop"
tags: Bash "For Loop"
---


- The simplest for loop syntax repeats the occurrence of a set of a variable. 

```bash
for VARIABLE in LIST
    command1
    command2
done
```

- Rename All files in directory to Lowercase

```bash
for i in `ls -1`; do mv $i "${i,,}" ; done
```

Explanation: move file variable-i in the list of files `ls -l` to lower case file i. 

SEE: https://devhints.io/bash
