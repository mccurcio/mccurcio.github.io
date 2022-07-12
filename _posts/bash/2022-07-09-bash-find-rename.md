---
title: Bash - Find & Rename Spaces to Underscores
tags: Find Rename Bash
---

- The bash command `rename` substitute spaces for underlines globally.

```bash
find . -name "* *" -type f | rename 's/ /_/g'
```
