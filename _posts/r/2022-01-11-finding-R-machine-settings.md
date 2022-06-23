---
title: "R - Finding Machine Settings"
tags: R Settings
---

A good practice is to add R and Linux machine settings for reproducible
data manipulation.

Machine Settings:

```r
Sys.info()[c(1:3,5)]
```

    ##                                                            sysname 
    ##                                                            "Linux" 
    ##                                                            release 
    ##                                         "5.16.19-76051619-generic" 
    ##                                                            version 
    ## "#202204081339~1649696161~20.04~091f44b-Ubuntu SMP PREEMPT Thu Ap" 
    ##                                                            machine 
    ##                                                           "x86_64"

R Settings:

```r
sessionInfo()
```

    ## R version 4.2.0 (2022-04-22)
    ## Platform: x86_64-pc-linux-gnu (64-bit)
    ## Running under: Pop!_OS 20.04 LTS
    ## 
    ## Matrix products: default
    ## BLAS:   /usr/lib/x86_64-linux-gnu/openblas-pthread/libblas.so.3
    ## LAPACK: /usr/lib/x86_64-linux-gnu/openblas-pthread/liblapack.so.3
    ## 
    ## locale:
    ##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
    ##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
    ##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
    ##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
    ##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
    ## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] compiler_4.2.0  magrittr_2.0.3  fastmap_1.1.0   cli_3.3.0      
    ##  [5] tools_4.2.0     htmltools_0.5.2 rstudioapi_0.13 yaml_2.3.5     
    ##  [9] stringi_1.7.6   rmarkdown_2.14  knitr_1.39      stringr_1.4.0  
    ## [13] xfun_0.30       digest_0.6.29   rlang_1.0.2     evaluate_0.15
