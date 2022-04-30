---
title: "The Complete Algorthym for K-means"
tags: R Kmeans InProgress
---


An Implementation of K-means in R
NOTE: K-Means algorithm from kmeans_mehdi.R


```{r}
library(ggplot2)

# Data generation
x <- round(rnorm(1000,100,15)) + rnorm(1000)*15
dens.x   <- density(x)
empir.df <- data.frame(type='empir', x=dens.x$x, density=dens.x$y)
norm.df  <- data.frame(type='normal', x=50:150, density=dnorm (50:150,100,15))
df       <- rbind(empir.df, norm.df)
m        <- ggplot(data = df, aes(x,density))
m + geom_line(aes(linetype=type, colour=type))
```

---

```{r}
k = 3            # the number of K's
max = 5000       # the maximum number for generating random points
n = 100          # the number of points
maxIter = 10     # maximum number of iterations
threshold = 0.1  # difference of old means and new means

# Randomly generate points in the form of (x,y)
x <- sample(1:max, n)
y <- sample(1:max, n)

# Put point into a matrix
z <- c(x,y)
m = matrix(z, ncol=2)

ks <- c(1, 2, 4, 8, 10, 15, 20)  # Different Ks
for(k in ks) {
  myKmeans(m, k, max)
}

# Initialization for k means: the k-first points in the list
myKmeans <- function(m, k, max) {
  x <- m[, 1]
  y <- m[, 2]
  d=matrix(data=NA, ncol=0, nrow=0)
  for(i in 1:k) {
    d <- c(d, c(x[i], y[i]))
}

init <- matrix(d, ncol=2, byrow=TRUE)

dev.new()
plotTitle <- paste("K-Means Clustering K = ", k)
plot(m, xlim=c(1,max), ylim=c(1,max), xlab="X", ylab="Y", pch=20, main="plotTitle")
par(new=T)
plot(init, pch=2, xlim=c(1,max), ylim=c(1,max), xlab="X", ylab="Y")
par(new=T)

oldMeans <- init
oldMeans

cl <- Clustering(m, oldMeans)
cl

means <- UpdateMeans(m, cl, k)

thr <- delta(oldMeans, means)
itr <- 1
while(thr > threshold){
  cl       <- Clustering(m, means)
  oldMeans <- means
  means    <- UpdateMeans(m, cl, k)
  thr      <- delta(oldMeans, means)
  itr      <- itr+1
}

cl
thr
means
itr

for(km in 1:k) {
  group <- which(cl == km)
  plot(m[group,],axes=F, col=km, xlim=c(1,max), ylim=c(1,max), pch=20, xlab="X", ylab="Y")
  par(new=T)
}

plot(means, axes=F, pch=8, col=15, xlim=c(1,max), ylim=c(1,max), xlab="X", ylab="Y")
par(new=T)

dev.off()
} # end function myKmeans

# function distance
dist <- function(x,y) {
	d<-sqrt( sum((x - y) **2 ))
}

createMeanMatrix <- function(d) {
	matrix(d, ncol=2, byrow=TRUE)
}

# Compute Euclidean Distances
euclid <- function(a,b) {
  d <-sqrt(a**2 + b**2)
}

euclid2 <- function(a) {
  d <-sqrt(sum(a**2))
}

# compute difference between new means and old means
delta <- function(oldMeans, newMeans) {
  a <- newMeans - oldMeans
  max(euclid(a[, 1], a[, 2]))
}

Clustering <- function(m, means) {
  clusters = c()
  n <- nrow(m)
  for(i in 1:n) {
    distances = c()
    k <- nrow(means)
    for(j in 1:k) {
	  di <- m[i,] - means[j,]
	  ds <- euclid2(di)
	  distances <- c(distances, ds)
    }
    minDist <- min(distances)
    cl <- match(minDist, distances)
    clusters <- c(clusters, cl)    
  }
  return (clusters)
}

UpdateMeans <- function(m, cl, k) {
  means <- c()
  for(c in 1:k) {
    # get the point of cluster c
    group <- which(cl == c)
    
    # compute the mean point of all points in cluster c
    mt1 <- mean(m[group,1])
    mt2 <- mean(m[group,2])
    vMean <- c(mt1, mt2)
    means <- c(means, vMean)
   }
  means <- createMeanMatrix(means)
  return(means)
}
```

