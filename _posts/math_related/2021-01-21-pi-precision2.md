---
title: "Pi Square Over 6"
tags: Pi
---

The [Basel Problem](https://www.youtube.com/watch?v=d-o3eB9sfls)

![\\frac{\\pi^2}{6} = 1 + \\Large\\Sigma\_{\\small i=1} \\small{\\frac{1}{i^2} }](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Cfrac%7B%5Cpi%5E2%7D%7B6%7D%20%3D%201%20%2B%20%5CLarge%5CSigma_%7B%5Csmall%20i%3D1%7D%20%5Csmall%7B%5Cfrac%7B1%7D%7Bi%5E2%7D%20%7D "\frac{\pi^2}{6} = 1 + \Large\Sigma_{\small i=1} \small{\frac{1}{i^2} }")

![\\Large\\left( \\frac{\\pi^2}{6} \\right) \\normalsize = 1 + \\frac{1}{1^2}+ \\frac{1}{2^2}+ \\frac{1}{3^2}+ \\frac{1}{4^2}+ \\frac{1}{5^2} + \~...](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5CLarge%5Cleft%28%20%5Cfrac%7B%5Cpi%5E2%7D%7B6%7D%20%5Cright%29%20%5Cnormalsize%20%3D%201%20%2B%20%5Cfrac%7B1%7D%7B1%5E2%7D%2B%20%5Cfrac%7B1%7D%7B2%5E2%7D%2B%20%5Cfrac%7B1%7D%7B3%5E2%7D%2B%20%5Cfrac%7B1%7D%7B4%5E2%7D%2B%20%5Cfrac%7B1%7D%7B5%5E2%7D%20%2B%20~... "\Large\left( \frac{\pi^2}{6} \right) \normalsize = 1 + \frac{1}{1^2}+ \frac{1}{2^2}+ \frac{1}{3^2}+ \frac{1}{4^2}+ \frac{1}{5^2} + ~...")

Is this true?

How many times must the summation be repeated for an accurate
approximation of
![\\pi](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Cpi "\pi").

``` r
calc_pi <- function(n){
    summation = 0
    for (i in 1:n) {
        summation = summation + 1/i^2
        #print(sqrt(6*summation))
    }
    return(sqrt(6*summation))
}

pi_approx <- numeric()
pi_approx <- calc_pi(500000)
print(pi_approx)
```

    ## [1] 3.141591
