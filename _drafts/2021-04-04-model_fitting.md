Model Fitting

https://rpubs.com/oaxacamatt/Model_fitting

What Is The Mean Distance Between Two Random Points In A Unit Square?

This little gem was carried out bc of a small post I ran across by [Presh Talwalkar](https://mindyourdecisions.com/blog/). In particular, [blog post](http://wp.me/p6aMk-4FA).

What is the average distance between two randomly chosen points in a square with a side length 1? The video presents how to estimate the answer and also derives the exact answer using integrals. In my circumstance I will be simulating the distribution to test if the raw data fits one of several forms. I will test the Normal curve, Lognormal, Cauchy, Chi-squared, Exponential, F-distribution, Negative binomial and Poisson.

Let us try a simulation for this puzzle. Produce 1e6 pairs of points within a unit square and determine their distance. Next make a histogram of the distribution. Test whether the distribution is normal?

```
set.seed(123)
x_1 = runif(1e6, min = 0, max = 1)
x_2 = runif(1e6, min = 0, max = 1)
y_1 = runif(1e6, min = 0, max = 1)
y_2 = runif(1e6, min = 0, max = 1)

# Calcualte distance from pt (x_1, y_1) to (x_2, y_2).
distance = rep(0, 1e6)
distance = sqrt((y_2-y_1)^2 + (x_2-x_1)^2)

average_distance = mean(distance)
sd_distance = sd(distance)
output1 = paste("mean = ", average_distance, ",  std dev = ", sd_distance)
print(output1)
```

```
# Plot histgram of distances with Normal Curve
h <- hist(distance, 
          breaks = 50,
          ylim = c(0, 40000),
          xlim = c(0, 1.42),
          col = "red", 
          xlab = "Distance", 
          main = "Distance of 1e6 Random Points in Unit Square") 

xfit <- seq(min(distance), max(distance), length = 40) 
yfit <- dnorm(xfit, mean = mean(distance), sd = sd(distance)) 
yfit <- yfit * diff(h$mids[1:2]) * length(distance) 
lines(xfit, yfit, col = "blue", lwd = 2)
```
