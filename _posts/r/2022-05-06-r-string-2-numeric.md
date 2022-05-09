---
title: "R - Numeric from \"Strings\" Using `gsub`"
tags: R gsub
output: github_document
---


**Method #1**

Start with a vector or df ‘string’ convert to ‘numeric.’

```r
dollar_string = c("1,234,567", "1,234")

dollar_numeric <- as.numeric(gsub(",", "", dollar_string))

typeof(dollar_numeric)
```

    ## [1] "double"

```r
dollar_numeric
```

    ## [1] 1234567    1234

**Method \#2**

```r
df_string <- data.frame(x = c("6,131", "7,835", "2,222"),              
                        y = c("5,999", "3,136", "1,501"))

dup_df <- df_string
dup_df[, 1:2] <- lapply(df_string[, 1:2],  
                   function(x){ as.numeric(gsub(",", "", x)) })
dup_df   
```

    ##      x    y
    ## 1 6131 5999
    ## 2 7835 3136
    ## 3 2222 1501
    
    
**EXTRA** - European number strings to American format

```r
str_numbers <- c("1.560,65", "134,2","123","0,32")
as.numeric(gsub(",", "\\.", gsub("\\.", "", str_numbers)))
```

    [1] 1560.65  134.20  123.00    0.32
