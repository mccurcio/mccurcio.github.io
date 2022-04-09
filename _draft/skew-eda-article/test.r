library("PearsonDS")

#skew left
moments <- c(mean = 10,variance = 1,skewness = 1.5, kurtosis = 5)
data <- rpearson(100, moments = moments)

hist(data)
boxplot(data, horizontal = T)

#skew right
moments <- c(mean = 10, variance = 1, skewness = -1.5, kurtosis = 5)
data2 <- rpearson(100, moments = moments)

hist(data2)
boxplot(data2, horizontal = T)
