---
title: "Bash - Remove characters after X"
tags: Bash
---

Using bash, remove characters after X via `cut`

`cut -f1` takes first column assuming the delimiter = "comma".

```bash
cat file.txt | cut -f1 -d"," > new.file.txt
```
