---
title: "Python: Count words in file"
tags:
- "one liners"
- "count words"
---

### Count words in file

Returns the number of words in a text file, 

- `open('test.txt', 'r').read()` gets us the text of the file. 
- We get the word using `.split()`, splits the text by any whitespace and returns a list of words. 
- Empty strings are removed from the results.
- `len` gives us the count of the words.

```
len(open('Dictionary-Merges.md', 'r').read().split())
```
