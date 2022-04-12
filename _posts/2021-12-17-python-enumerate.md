---
title: "Python - Enumerate"
date:  2021-12-17 21:00:00
tags: Python Enumerate
---

### Enumerate

Instead of doing:
```
i = 0 
for item in iterable: 
    print i, item 
    i += 1
```

Do:
```
for i, item in enumerate(iterable):
    print i, item
```