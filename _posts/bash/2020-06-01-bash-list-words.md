---
title: "Make a doc of words into a list of words?"
tags: Bash
---


Make an index

* https://unix.stackexchange.com/questions/62056/whats-the-easiest-way-to-make-a-list-of-most-common-words-in-a-list


* First get rid of Punctuation and Pipe '|'

```bash
cat *.txt | tr '[:punct:]' ' ' | tr '|' ' ' | printf '%s\n' $(cat *.txt) | sort | uniq -c | sort -gr | less
```


* Make a text document into a list of words

```bash
cat *.txt | printf '%s\n' $(cat *.txt) | sort | uniq -c | sort -gr | less 
```
