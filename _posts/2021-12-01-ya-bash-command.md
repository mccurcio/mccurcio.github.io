---
title: "Yet More Bash Commands"
date:  2021-12-09 11:00:00
tags: Bash
---


### Jump to a directory, execute a command (ls), and jump back to the current directory

```
(cd /tmp && ls)
```

### Count the number of files in a directory:

```
cd dir; ls -1 | wc -l
```