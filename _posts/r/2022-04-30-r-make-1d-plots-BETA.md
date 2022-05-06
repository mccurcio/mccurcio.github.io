---
title: "R - Make 1D Plots"
tags: R 1D Plot
---


```{r}
X_Values <- c(-1, -0.5, -0.3, -0.1, 0, 0.1, 0.3, 0.5, 1)

# Make matrix
x <- cbind(X_Values, 0)

# Plot without box or axis with dot, representing data points
plot(x, bty='n', xaxt='n', yaxt='n', ylab='', xlab='', pch=3, cex=1) # Try pch=3,21,1

# Place axis at y-value in order to pass through points with sequence wider than range
axis(side=1, seq(-4, 4, 1), pos=0)  ## Using y-value as position 

# Place x-values & x-axis label onto plot
text(x, labels=x[,1], pos=3, offset=1, font=2)

text(y=0, x=0, labels='Strength of Correlation', pos=3, offset=5, font=2)
```

![](/assets/img/2022-04-30-r-make-1d-plots.png)

See: (https://statistics.laerd.com/statistical-guides/pearson-correlation-coefficient-statistical-guide.php)
