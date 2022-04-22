---
title: "Python: Enumerate"
date: '2021-12-17'
slug: enumerate
tags:
- enumerate
categories: python
---

`enumerate(iterable, start=0)`

Instead of doing:

```
i = 0 
for item in iterable: 
    print i, item 
    i += 1
```

We can do:

```
for i, item in enumerate(iterable):
    print i, item
```

https://docs.python.org/3/library/functions.html?highlight=enumerate#enumerate
