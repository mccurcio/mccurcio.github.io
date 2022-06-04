Working With Matrices
================

Matrix Example 1
- Convert vector into matrix with 4*4

``` r
# Example vector
vector1= seq(1, 16, by=1)
 
# Convert vector into matrix with 4*4
matrix1 <- matrix(vector1, nrow = 4, ncol = 4) 

matrix1
```

    ##      [,1] [,2] [,3] [,4]
    ## [1,]    1    5    9   13
    ## [2,]    2    6   10   14
    ## [3,]    3    7   11   15
    ## [4,]    4    8   12   16

Matrix Example 2

``` r
# Produce 4*4 matrix
matrix2 <- matrix(16:1, nrow = 4, ncol = 4) 
 
matrix2
```

    ##      [,1] [,2] [,3] [,4]
    ## [1,]   16   12    8    4
    ## [2,]   15   11    7    3
    ## [3,]   14   10    6    2
    ## [4,]   13    9    5    1

Example Matrix Add/Subtraction

``` r
print(matrix1-matrix2)
```

    ##      [,1] [,2] [,3] [,4]
    ## [1,]  -15   -7    1    9
    ## [2,]  -13   -5    3   11
    ## [3,]  -11   -3    5   13
    ## [4,]   -9   -1    7   15
