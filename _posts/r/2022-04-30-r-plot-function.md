---
title: "R - Histogram Function"
tags: R Function Plot Histogram
---


Plot & Save Histogram As .png

- Histogram of X vs frequency

```{r}
plot_1 <- function(){
    hist(data$col-name, 
         main = "title",
         xlab = "X",
         ylab = "Y",
         ylim = c(0, 100), # Changed x & y limits to read values
         xlim = c(0, 100),
         col = "red")
         # Default for this graphic is width = 480, height = 480.
         # To change the size add the parameters width & height.
}
plot_1()

png(file = "plot_1.png")
plot_1()
dev.off()
```
