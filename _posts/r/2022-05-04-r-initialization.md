---
title: "R - Load a list of libraries"
tags: R Library
---

Load R libraries quietly, while setting very parameters.

Parameters:
1. options(digits = 5) - Gives 5 digit precision
2. options(tinytex.verbose = FALSE) - When 'knitting' docs this will also give fewer messages. 

- `options` {base} Invoking 'options()' with no arguments returns a list with the current values of the options.

``` r 
# Use: message=FALSE, warning=FALSE, include=FALSE
opts_chunk$set(fig.align = 'center')
options(tinytex.verbose = FALSE)
options(digits = 5) 

#Load Libraries
Libraries <- c("knitr", "readr")
for (p in Libraries) { 
    library(p, character.only = TRUE)
}
```

