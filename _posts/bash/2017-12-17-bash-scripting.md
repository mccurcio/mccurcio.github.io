---
title: "Bash - Scripting"
tags: Bash
---


Run command on multiple files at once

```bash
for FILE in $(ls *); do command $FILE; done
```

Warning: this assumes there are no spaces in the lines in your file. If they do # contain spaces, you need to add proper escaping using quotes.

**See**: [Advanced Bash-Scripting Guide](http://tldp.org/LDP/abs/html/), **GOOD**!
