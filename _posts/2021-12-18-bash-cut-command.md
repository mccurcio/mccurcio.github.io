---
title: "Bash Commands - Cut"
date:  2021-12-18 11:00:00
tags: Bash Cut
---


Cut Linux Commands

### Cut the 1st, 2nd, 3rd, 5th, 7th and following columns:

```
cut -f1-3,5,7- input.txt
```

### Cut the 3rd column with columns separated by a single space:

```
cut -d" " -f 3 input.txt
```

#### [Cut Man Page](https://www.man7.org/linux/man-pages/man1/cut.1.html)