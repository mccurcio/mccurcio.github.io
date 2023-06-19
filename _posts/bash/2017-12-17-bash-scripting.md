---
title: "Bash - Scripting"
tags: Bash
---

```
#!/bin/sh # 'Crunch-Bang-Bin-Bash' May help you remember?

# This script renames .html files to .txt
# Place this script in the directory and use
# chmod +x test.sh
# followed by ./test.sh

for file in *.html
do
  mv "$file" "${file%.html}.txt"
done
```

**See**: [Advanced Bash-Scripting Guide](http://tldp.org/LDP/abs/html/), **GOOD**!
