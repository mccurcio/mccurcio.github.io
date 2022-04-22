---
title: "Python: Pronounceable passwords"
date: '2021-12-17'
slug: passwords
tags:
- "passwords"
categories: python
---

Creates a random ‘-‘ separated 4 word password from the given input text file to be used as a password

```
import random

words = open('/usr/share/dict/words').read().split()
"-".join([random.choice(words) for _ in range(4)])
```
