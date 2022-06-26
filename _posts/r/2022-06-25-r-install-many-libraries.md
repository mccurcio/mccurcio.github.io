---
title: "R- Install Multiple Libraries, more easily"
tags: R Tips
---

There are many times when I blow out my Linux OS and reinstall everything.

However, this would mean that I would need to reinstall R and RStudio and all the libraries I gathered. 

I experiment with new packages all the time. Some would break RStudio, so reinstalling it was helpful.

```{r}
# R script to install many packages

library(rlang)

Libraries <- c("markdown", "rmarkdown", "doMC",
               "ggplot2", "bookdown", "blogdown",
               "Boruta", "C50", "devtools",
               "caret", "corrplot", "dplyr",
               "e1071", "ggfortify", "jpeg",
               "png", "neuralnet", "openssl",
               "purr", "tidyverse", "xml2",
               "yaml", "seqinr", "rvest",
               "beautifyR", "beepr")

# Define load_install function
load_or_install <- function(Libraries) {
  for (package in Libraries) {
    if(!is_installed(package)) {
      install.packages(package,
                       repos = "http://lib.stat.cmu.edu/R/CRAN",
                       dependencies = TRUE)
    }
    library(package,
            character.only = TRUE,
            quietly = TRUE,
            verbose = FALSE)
    }
}

load_or_install(Libraries)
```
