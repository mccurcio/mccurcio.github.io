---
title: "Python: Count Lines in file"
date: '2021-12-17'
slug: Countlines
tags:
- "one liners"
- "count lines"
categories: python
---

Returns the number of lines in a text file, 

- `open('test.txt', 'r').read()` gets us the text of the file. 
- `.split('\n')`, which splits the text at every new line character `\n` and returns a list. 
- `len` gives us the count of the words.

```
len(open('data/test.txt', 'r').read().split('\n'))
```
