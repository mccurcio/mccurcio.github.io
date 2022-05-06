---
title: "Time Your R Code"
tags: R Time
---



```
start <- proc.time()

# Code to measure
for (i in 1:100000){
	h[i] <- g[i] + 1
}

# Stop the clock
proc.time() - start

```

### [Man_Page](https://)

