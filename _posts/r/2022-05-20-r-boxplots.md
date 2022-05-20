# 1: Drawing Multiple Boxplots Using Base R Graphics

```
boxplot(data)     
```

# 2: Drawing Multiple Boxplots Using ggplot2 Package

```
install.packages("reshape2")                                 # Install reshape2 package
library("reshape2")                                          # Load reshape2
```

Now, we can convert our data to long format using the melt function provided by the reshape2 package:

```
data_long <- melt(data)                                      # Reshaping data frame
head(data_long) 

library("ggplot2")                
ggplot(data_long, aes(x = variable, y = value)) +            # Applying ggplot function
  geom_boxplot()
```  
  
# 3: Drawing Multiple Boxplots Using lattice Package

```
library("lattice")                                           # Load lattice package
bwplot(value ~ variable, data)   
``` 
  
