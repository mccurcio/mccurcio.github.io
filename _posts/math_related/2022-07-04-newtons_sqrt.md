---
title: "Newton's Square Roots"
tags: Math
---

This method was used by Newton to find square roots.

```{r}
sqrt_newton <- function(value, init, epsilon = 0.01){
  while(abs(init**2 - value) > epsilon){
    init <- 1/2 *(init + value/init)
    print(init)
  }
  return(init)
}

sqrt_newton(24, 3)
```
[1] 5.5   
[1] 4.931818    
[1] 4.899089    
[1] 4.899089    
