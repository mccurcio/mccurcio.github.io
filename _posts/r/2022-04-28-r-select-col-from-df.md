---
title: "How to Select Specific Columns in R"
tags: R
---


You can use the following syntax to select specific columns in a data frame in base R:

```{r}
#select columns by name
df[c('colName1', 'colName2', 'colName4')]

#select columns by index number(s)
df[c(1, 2, 4)]
```
