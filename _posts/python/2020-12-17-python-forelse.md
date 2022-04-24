---
title: "Python for-else"
tags: Python ForElse
---


<hr>
Try this `for-else` tip

```
needle = 'd'
haystack = ['a', 'b', 'c']

#Bad example

found = False
for letter in haystack:
    if needle == letter:
        print('Found')
        found = True
        break
if not found:
    print('Not found')

#### Better example

for letter in haystack:
    if needle == letter:
        print('Found')
        break
else: # if no break found:
    print('Not found')
```

### [manpage]()
