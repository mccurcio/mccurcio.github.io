---
title: "Python - Produce Random Text"
tags: Python Random
---


Produce random text of any length

```
import random, string

"".join(
  [random.choice(string.ascii_letters + string.digits)
  for i in range(20)]
)
```
