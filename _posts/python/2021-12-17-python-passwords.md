---
title: "Python - Pronounceable Passwords"
tags: Python Passwords
---


Produces a randomly chosen word password of any given length.

- Linux Mint dictionaries are commonly placed `/usr/share/dict`. You may need yo insert your own dictionary location.

```
import random

words = open('/usr/share/dict/words').read().split()
"-".join([random.choice(words) for _ in range(3)])
```
