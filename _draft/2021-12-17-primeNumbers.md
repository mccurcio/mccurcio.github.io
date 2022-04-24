---
title: "Python: Check if a number is a prime"
tags:
- "prime numbers"
---


Creates a random ‘-‘ separated 4 word password from the given input text file to be used as a password

```
flag = 1
n = int(input('Enter the number: '))
for i in range(2, n):
    if (n % i == 0):
        print('%d is not a prime number' % n)
        flag = 0
        break
if (flag == 1):
    print('%d is a prime number' % n)
```
