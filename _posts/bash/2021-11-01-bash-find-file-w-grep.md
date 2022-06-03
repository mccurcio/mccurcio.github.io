---
title: "Bash - Grep - Find file name in sub directories"
tags: Bash Grep
---


Find a specific file name in large directories

`grep -option search_pattern file-name`

- **i** - Case insensitive search
- **A n** - grep -A n pattern file - Show n lines after the match  
- **B n** - grep -B n pattern file - Show n lines before the match  
- **C n** - grep -C n pattern file - Show n lines before and after the match  
- **v** - InVert lines, ie lines that **do not** match  
- **c** - Count number of matching lines  
- **l** - Display only the file names  
- **w** - Match the exact word  
- **e** - grep -e regex file - Match the regex pattern  
- **a** - grep -a pattern file - Search into binary files  
- **r** - grep -r pattern dir - Recursive into directory


```bash
grep Documentation

grep -irl foo*
```
