---
title: "R - De/Select Columns"
tags: R Basics
categories: R-Code
---


You can use the following syntax to select (or seselect) specific columns in a data frame in base R:

- **Select** columns by **Name**

```{r}
df_trim <- df[c('col1', 'col2', 'col4')]
```

- **Select** columns by **Index**

```{r}
df_trim <- df[c(1, 2, 4)]
```

- To **De-Select** columns by **Index**

```{r}
df_trim <- df[-c(1, 2, 4)]
```


- I have used the code below to help me discern the column names and their numbers.

```{r}
col_labels <- colnames(df)

for (i in seq(1, length(col_labels))) {
  print(paste(i, col_labels[i], sep=":  "))
}
```

1: colname1  
2: colname2