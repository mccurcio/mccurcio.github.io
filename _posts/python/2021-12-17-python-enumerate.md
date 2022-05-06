---
title: "Python - enumerate"
tags: Python Enumerate
---


`enumerate(iterable, start=0)`  
[Python3: numerate](
https://docs.python.org/3/library/functions.html?highlight=enumerate#enumerate
)

Instead of doing:
```
list = ["a", "b", "c"]
i = 0 
for item in list: 
    print i, item 
    i += 1
```

**Do This:**
```
for i, item in enumerate(list):
    print i, item
```
