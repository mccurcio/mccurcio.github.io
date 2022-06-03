---
title: "Cleaning Data in R"
tags: "Cleaning-Data"
---

**Example Workflow:**

- Access data -> Explore & Process -> Extract Insights -> Report

**1. Accessing data**

- Glimpse

```{r}
library(dplyr)
glimpse(df)

library(assertive)
assert_is_numeric(df$column)

# or simply
str(df)
is.numeric(df$column)
# is.character, is.logical, is.factor, is.Date, ...
class(df$column) #returns class/type
```

**2. String to Numerics**

```{r}
# strings-commas in numbers, "54,567"
library(stringr)

#ex. str_remove(column, ","))
df_no_commas = str_remove(df$string(df$string, ","))
numers = asnumeric(df_no_commas) 

# Then us mutate to convert to tibble
df %>% mutate(as.numeric(str_remove(col, ",")))
mean(df)
```

**3. Factors to Numerics**
	
```{r}
# Factors to numeric
product_type = as.factor("100", "200", "300")
class(product_type) # factor

as.numeric(as.character(product_type))
```





































