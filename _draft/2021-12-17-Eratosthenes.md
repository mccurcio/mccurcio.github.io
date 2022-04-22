---
title: "Python: The Sieve of Eratosthenes"
date: '2021-12-17'
slug: Eratosthenes
tags:
- "prime numbers"
- Eratosthenes
categories: python
---


The sieve of Eratosthenes is a simple, ancient algorithm for finding all prime numbers up to any given limit

```
n = int(input('Enter a number: '))
prime = [True for i in range(n + 1)]
p = 2
while p * p <= n:
    if prime[p]:
        for i in range(p * 2, n + 1, p):
            prime[i] = False
    p += 1

print([p for p in range(2, n) if prime[p]])
```
