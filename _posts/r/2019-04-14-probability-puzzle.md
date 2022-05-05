---
title: "Ask Statistics Guy"
tags: R Statistics Probability
---


Consider a normally distributed random variable with an expected value
of 20 and standard deviation of 4. If you determine the value of this
variable 8 times, then what is the chance that the 8 sample values yield
an improved standard deviation between 4.9 and 5.3?

[See
Question](https://www.reddit.com/r/AskStatistics/comments/dgvcq0/can_anyone_help_me_with_this_question_about_the/?%24deep_link=true&correlation_id=8d023e0e-cae3-4a55-b070-aa7c17047ecd&ref=email_digest&ref_campaign=email_digest&ref_source=email&%243p=e_as&%24original_url=https%3A%2F%2Fwww.reddit.com%2Fr%2FAskStatistics%2Fcomments%2Fdgvcq0%2Fcan_anyone_help_me_with_this_question_about_the%2F%3F%24deep_link%3Dtrue%26correlation_id%3D8d023e0e-cae3-4a55-b070-aa7c17047ecd%26ref%3Demail_digest%26ref_campaign%3Demail_digest%26ref_source%3Demail%26utm_content%3Dpost_title%26utm_medium%3Ddigest%26utm_name%3Dtop_posts%26utm_source%3Demail%26utm_term%3Dday&_branch_match_id=711018267596211740)

```r
obs = 10000 # rows
tests = matrix(0, nrow = obs, ncol = 8) # 8 cols = 8 runs 

set.seed(1003)
# populate with random values, mean = 20, sd = 4
for (i in 1:obs) {
    for (j in 1:8) {
        tests[i,j] <- rnorm(1, mean = 20, sd = 4)
    }
}

#Find sd of each row
sds = apply(tests, 1, sd)

# Filled Density Plot
d <- density(sds)
plot(d, main="Kernel Density of Std. Dev.")
polygon(d, col="red")
abline(v = 4.9, col= "black")
abline(v = 5.3, col= "black")
```

![](/assets/img/prob-puzzle.png)

```r
# Counts for standard deviation between 4.9 and 5.3
counts = vector(mode =  "integer", length = obs)
for (k in 1:obs) {
    if ((sds[k] >= 4.9) & (sds[k] <= 5.3)) {
        counts[k] <- 1
    }
}
total = sum(counts)
print((sum(counts)/obs))
```

    ## [1] 0.0704

**The percent probability of this event occurring is 7.04%.**  

