---
title: "R - Plot 2x2, `par`, `mfrow`"
tags: R plot
---

**2 x 2 Plots**

```{r}
plot_4 <- function(){
    par(mfrow = c(2, 2))
    plot_1()
    plot_2()
    plot_3()
    plot_4()
}

plot_4()

png(file = "mcc_plot_4.png")
plot_4()
dev.off()
```
