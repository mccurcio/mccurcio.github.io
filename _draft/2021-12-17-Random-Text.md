---
title: "Python: Produce Random Text"
date: '2021-12-17'
slug: Random
tags:
- "one liners"
- "random text"
categories: python
---

Produce Random Text Of Any Length

```
import random, string
"".join(
  [random.choice(string.ascii_letters + string.digits)
  for i in range(20)]
)
```
