---
title: "Python - enumerate"
date:  2021-12-17 21:00:00
tags: Python Enumerate
---

### [Enumerate Tips](https://book.pythontips.com/en/latest/enumerate.html)

Instead of doing:
```
i = 0 
for item in iterable: 
    print i, item 
    i += 1
```

**Do This**:
```
for i, item in enumerate(iterable):
    print i, item
```
