---
title: "Python - Strings"
date:  2021-12-17 21:00:00
tags: Python Strings re
---

### Convert repeated spaces to one space: 

- The snippet below clears out the repeated spaces in a text and replaces it with single space. 

- `re` is a regular expression module to find more than one occurrences of space with ‘[ ]+’.

```
import re
re.sub(r"[ ]+", ' ', 'this    sentence          has              non-uniform      spaces')
```
