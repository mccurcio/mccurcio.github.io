---
title: "R - How To Find Machine Settings"
tags: R Settings
---

A good practice is to add R and Linux machine settings for reproducible data manipulation.

Machine Settings:
```{r}
Sys.info()[c(1:3,5)]
```
                                                           sysname 
                                                           "Linux" 
                                                           release 
                                         "5.17.5-76051705-generic" 
                                                           version 
    "#202204271406~1653440576~20.04~6277a18-Ubuntu SMP PREEMPT Thu Ma" 
                                                           machine 
                                                          "x86_64" 

R Settings:
```{r}
sessionInfo()
```
