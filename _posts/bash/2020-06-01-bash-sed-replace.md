---
title: "Bash - Using Sed to Replace"
date: 2019-01-31
tags: Bash Sed
---



sed - A stream editor is used to perform basic text transformations on an input stream (a file or input from a pipeline).

To replace text in a file:

```
sed 's/\t//g' 1.txt > 2.txt
```

Above is replacing every tab "\t" on the line because we use the "g" for global, with nothing so deleting the tabs in the file.

```
sed 's/\t/A/' 1.txt > 2.txt
```

Above replaces only the first tab on the line with a "A".

