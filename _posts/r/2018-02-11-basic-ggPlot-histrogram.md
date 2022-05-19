---
title: "R - Basic GGPlot Histogram"
tags: R GGPlot Histogram
---

Create normally distributed data

```{r}
set.seed(42)

xvar_rand_norm <- rnorm(1000, mean = 1)
df.xvar <- data.frame(xvar_rand_norm)
xvar_mean <- mean(xvar_rand_norm)
```

This Histogram uses GGplot2, although I prefer base R for most simple
graphics.

```{r}
library(ggplot2)

ggplot(data = df.xvar, aes(x = xvar_rand_norm)) +
       geom_histogram() +
       geom_vline(xintercept = xvar_mean, color = "dark red") +
       annotate("text", label = paste("Mean: ", round(xvar_mean,digits = 2)), 
                x = xvar_mean, y = 30, color = "white", size = 5)
```

![](/assets/img/ggplot-histo.png)
