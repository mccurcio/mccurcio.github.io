---
title: "Python: Produce Random Text"
tags:
- "one liners"
- "random text"
---

Produce Random Text Of Any Length

```
import random, string
"".join(
  [random.choice(string.ascii_letters + string.digits)
  for i in range(20)]
)
```
