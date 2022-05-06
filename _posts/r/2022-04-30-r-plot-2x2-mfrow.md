---
title: "R - Plot 2x2, `par`, `mfrow`"
tags: R Plot
---

**2 x 2 Plots**

```{r}
plot_2x2 <- function(){
    par(mfrow = c(2, 2))
    plot_1()
    plot_2()
    plot_3()
    plot_4()
}

plot_2x2()

png(file = "plot_2x2.png")
plot_2x2()
dev.off()
```
