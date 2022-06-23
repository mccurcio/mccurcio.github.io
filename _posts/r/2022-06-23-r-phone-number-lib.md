---
title: "R - Library(phonenumber)"
tags: R Libraries
---


I found this library looking through the R-cran repo of modules.
Just tried it out and it is very simple, but funny.

- Thought: It would be interesting to tie the output of this mod to a prog that filters the words through a dictionary.

```{r}
library(phonenumber)

value <- 316
numberToLetter(value, decreasing = FALSE, qz = 1)
```


```{r}
value <- 5358
numberToLetter(value, decreasing = FALSE, qz = 1)
```

