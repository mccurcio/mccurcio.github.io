---
title: "Prime Numbers Using The Sieve of Eratosthenes"
tags: Primes Eratosthenes Python
---


The sieve of Eratosthenes is an ancient algorithm for finding all prime numbers less than N.   
Very Cool ;)

- The key to understanding this algorithm is the `range` command.  
   - `range(start, stop, step)`
   - It calls any number starting at 2*p up to N+1 **NOT a prime**, when it steps up by p.  
   {2p, 3p, 4p, ..., N+1} while N <= p^2.
   
```
n = int(input('Enter an integer: '))
prime = [True for i in range(n + 1)]
p = 2

while p * p <= n:
    if prime[p]:
        for i in range(2*p, n+1, p):
            prime[i] = False
    p += 1

print([p for p in range(2, n) if prime[p]])
```
