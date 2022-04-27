---
title: "Python - with"
date:  2020-11-25
tags: Python
---


Tip for reading files using `with`
[with man page]()


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
