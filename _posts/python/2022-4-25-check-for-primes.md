---
title: "Check for Primes"
tags: Python
---


```python
import math 

flag = 1
n = int(input('Enter the number: '))
#print('Is',n, 'Prime?')
upper_limit = math.floor(math.sqrt(n))

for i in range(2, upper_limit):
    if(n%i == 0):
        print('%d is not a prime number.' %n)
        print('%d is divisible by %d.' %(n, i))
        flag = 0
        break
if(flag == 1):
    print('%d is a prime number' %n)
```

    Enter the number: 4557
    4557 is not a prime number.
    4557 is divisible by 3.

