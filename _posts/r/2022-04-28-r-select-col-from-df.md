---
title: "R - Select Columns in Dataframe"
tags: R
---


Select columns in Dataframe using

- **c()**   
- Column Names   
- Column Index Number   

```{r}
#select columns by name
df[c('colName1', 'colName2', 'colName4')]

#select columns by index number(s)
df[c(1, 2, 4)]
```
