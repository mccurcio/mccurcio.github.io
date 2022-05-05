---
title: "R - Plotting as a Function"
tags: R Function Plot
---


Plot & Save Histogram As .png

- Histogram of X vs frequency

```{r}
plot_1 <- function(){
    hist(data$col-name, 
         main = "title",
         xlab = "X",
         ylim = c(0, 1400), # Changed x & y limits to read values
         xlim = c(0, 8),
         col = "red")
         # Default for this graphic is width = 480, height = 480.
         # To change the size add the parameters width & height.
}
plot_1()

png(file = "mcc_plot_1.png")
plot_1()
dev.off()
```
