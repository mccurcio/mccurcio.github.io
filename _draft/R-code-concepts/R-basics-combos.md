---
title: R - Producing Combinations
tags: Combinations R
---

# Create example vectors then use: `expand.grid`

`expand.grid(x,y,z,..., stringsAsFactors = TRUE)` 

```
vec1 <- c("Hearts", "Diamonds", "Spades", "Clubs")   
vec2 <- c("Jack", "Queen", "King")

expand.grid(vec1, vec2)
```


Var1 | Var2
----:|----:
Hearts | Jack			
Diamonds | Jack			
Spades | Jack			
Clubs | Jack			
Hearts | Queen			
Diamonds | Queen			
Spades | Queen			
Clubs | Queen			
Hearts | King			
Diamonds | King			
Spades | King			
Clubs | King



---

MAYBE
# using required libraries
library(combinat)
  
# generating combinations of the 
# alphabets taking 2 at a time
print ("Combination of letters two at a time")
combn(letters[1:4], 2)


---

at<-data.frame(A=c("V1","V2","V3","V4"),B=c("V1","V2","V3","V4")) 
for (h in 1:ncol(dat)) {
  for (i in 1:(nrow(dat)-1)) {
    combinations1 <- combn(nrow(dat), i)

    for (j in 1:ncol(combinations1)) {
      k <- combinations1[,j]
      a <- (dat[k,h])
      a <- paste(a, sep="", collapse="") 
      b <-(dat[-k,h])
      b <- paste(b, sep="", collapse="") 
      cat(sprintf("\"%s\" =>\"%s\"\n", a, b))
    }
  }
}
