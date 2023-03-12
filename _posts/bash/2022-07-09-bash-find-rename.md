---
title: Bash - Find & Rename Spaces to Underscores
tags: Find Rename Bash
---

### If you are a linux fan and don't like spaces in file names, This is great!

- Substitute spaces for underlines globally using `rename` a Perl prog,

```bash
# sudo apt install rename

find . -name "* *" -type f | rename 's/ /_/g'
```
