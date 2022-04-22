---
title: "Python - with"
date:  2020-11-25
tags: Bash
---

25th November 2018 at 5:45pm



###  Tip for Reading Files using `with`

```
# Bad example

f = open('some.txt')
text = f.read()
for line in text.split('\n'):
    print(line)
f.close()

# Better example

with open('some.txt') as f:
    for line in f:
        print(line)    
```  

[with man page]()