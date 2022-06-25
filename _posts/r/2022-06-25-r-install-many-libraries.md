---
title: "R- Install Multiple Libraries, more easily"
tags: R Tips
---

There are many times when I blow out my entire OS and reinstall everything. I go through phases. I used to be a Ubuntu OS hobbyist. I still use Ubuntu or Linx Mint now due to its ease of installation and that it comes ready to rock.  I got to the point where I would wipe the hard drive and reinstall the latest 6-month roll out of Ubuntu x.4 or x.10. 

However, this would mean that I would need to reinstall R and RStudio and all the libraries I had gathered. I would experiment with new packages all the time. Some would break RStudio, so reinstalling it was partially helpful.

```{r}
\# R script to install many packages needed By Matt Curcio

Libraries <- c("markdown", "rmarkdown", "doMC",
               "ggplot2", "bookdown", "blogdown",
               "Boruta", "C50", "devtools",
               "caret", "corrplot", "dplyr",
               "e1071", "ggfortify", "jpeg",
               "png", "neuralnet", "openssl",
               "purr", "tidyverse", "xml2",
               "yaml", "seqinr", "rvest",
               "beautifyR", "beepr", "rlang")

library(rlang)

# Define load_install function

load_or_install <- function(libaries) {
  for (package in libraries) {
    if(!is_installed(package)) {
      install.packages(package,
                       repos = "http://lib.stat.cmu.edu/R/CRAN",
                       dependencies = TRUE)
    }
    library(package,
            character.only = TRUE,
            quietly = TRUE,
            verbose = TRUE)
    print("OK")
    }
}

load_or_install(libaries)
```
