# Basics

- Using Iterable As Function Arguments ?
Handling Long Lines Of Code
Tuples Vs. Named Tuples

- Append to lists, dictionary, matrix
- Adding to lists, dictionary, matrix

- Function Example

- List All Files Of Certain Type In A Directory
  - list.files(dir, '') ???

Add Padding Around String

All Combinations For A List Of Objects
- echo[A,T,C,G][A,T,C,G]

any(), all(), max(), min(), sum()
Apply Operations Over Items In A List
Applying Functions To List Items
Arithmetic Basics
Assignment Operators
Basic Operations With NumPy Array
Breaking Up String Variables

     1.
     furn <- c("Upholstery KCDF", "Venetian Beige Leatherette N/C", "Upholstery KCDF", "Venetian Beige Leatherette N/C",  "Accessories Z06", "Black Kidney Grilles 173.00", "Accessories Z06", "Black Kidney Grilles 173")
    require(string1)
    unlist(stri_split_regex(str = furn, pattern = " "))
    
    2.
    split.var <- strsplit(my.var, " ")

Brute Force D20 Roll Simulator

Cartesian Product

    m1 <- matrix(sample(0:9, size=110000, replace = TRUE), ncol = 110)
    m2 <- matrix(sample(0:9, size=110000, replace = TRUE), ncol = 110)

    # Current approach: EXECELLENT
    m3 <- apply(m1, 1, function(x) x * t(m2))
    matrix(m3, ncol = 110, byrow = TRUE)

    #EDIT - Rcpp approach
    library(Rcpp)
    #assuming ncol(m1) == ncol(m2)
    cppFunction('IntegerMatrix cartProd(IntegerMatrix m1, IntegerMatrix m2) {
       int nrow1 = m1.nrow(), ncol = m1.ncol(), nrow2 = m2.nrow();
       int orow = 0;
       IntegerMatrix out(nrow1 * nrow2, ncol);

       for (int r1 = 0; r1 < nrow1; r1++) {
         for (int r2 = 0; r2 < nrow2; r2++) {    
           for (int c = 0; c < ncol; c++){
             out(orow, c) = m1(r1, c) * m2(r2, c);
         }
         orow++;
       }
       }
       return out;
     }')
     m5 <- cartProd(m1, m2)
     
Chain Together Lists

    # Create two lists.
    list1 <- list(1,2,3)
    list2 <- list("Sun","Mon","Tue")

    # Merge the two lists.
    merged.list <- c(list1,list2)

    merged.list
    
    # Create dataset 2
    price <- c(1, 4, 6, 7, 8)
    item <- c("candy", "socks", "tea", "coffee", "pens")
    retailer <- c("Meijer", "Wal-Mart", "Publix", "Tim Hortons", "Staples")
    # Combine vectors into data frame
    df1 <- data.frame(price, item, retailer)
    # Print top rows
    head(df1)
    
    rbind
    cbind

Cleaning Text

# Compare Two Dictionaries???

    Make Two Dictionaries
    importers = {'El Salvador' : 1234,
                 'Nicaragua' : 152,
                 'Spain' : 252
                }

     exporters = {'Spain' : 252,
                 'Germany' : 251,
                 'Italy' : 1563
                 }

      https://qiushiyan.github.io/tidy-text-mining/comparing-3-different-dictionaries.html


compare vectors for differences in R?

    https://datascienceparichay.com/article/r-compare-two-vectors-for-differences/
    # unique elements of vec1 not in vec2
    setdiff(vec1, vec2)
    # elements of vec1 not in vec2
    vec1[!(vec1 %in% vec2)]
    
    Vector difference using the setdiff() function
    # create two vector
    vec1 <- c(1, 2, 2, 3, 4)
    vec2 <- c(3, 4, 5, 6)
    # elements of vec1 not in vec2
    print(setdiff(vec1, vec2))
    
    Vector difference using ! and %in% operators
    # create two vector
    vec1 <- c(1, 2, 2, 3, 4)
    vec2 <- c(3, 4, 5, 6)
    # elements of vec1 not in vec2
    print(vec1[!(vec1 %in% vec2)])


    count unique values in a vector in R?
    # count distinct values in vector vec
    length(unique(vec))
    print(length(unique(vec)))
    
    # create a vector
    vec <- c(7, 7, 7, 7)
    # check if all elements in vec are equal
    print(length(unique(vec))==1)



Concurrent Processing

# Continue And Break Loops
    
    Create a while loop
    # set running to true
    running = True
    # while running is true
    while running:
    # Create a random integer between 0 and 5
        s = runif(1 0, 5)
        # If the integer is less than 3
        if s < 3:
            # Print this
            print('It is too small, starting over.')
            # Reset the next interation of the loop
            # (i.e skip everything below and restart from the top)
            continue
        # If the integer is 4
        if s == 4:
            running = False
            # Print this
            print('It is 4! Changing running to false')
        # If the integer is 5,
        if s == 5:
            # Print this
            print('It is 5! Breaking Loop!')
            # then stop the loop
            break

# while loops

    while (test_expression) {
        statement
    }
    
---

    v <- c("Hello","while loop")
    cnt <- 2

    while (cnt < 7) {
       print(v)
      cnt = cnt + 1
}


# Random Number Generator in R
    runif(50, 1, 99)

    set.seed(5) # random number will generate from 5
    
     sample(5:20, 5)
    TenRandomNumbers <- sort(sample.int(100, 10))
    TenRandomNumbers
    Random <- runif(n=10, min=-10, max=10)
    
    
    Normally Distributed Random Numbers
    rnorm(5)
    # using a different mean and standard deviation
    rnorm(4, mean=70, sd=10)
    
#  Binomial Random Numbers  
    rbinom(1 ,n, p)
    n= 5
    p=.5
    rbinom(1 ,n, p)
     # 1 success in 5 trails
    n= 5
    p=.5
    rbinom(19, n, p) # 10 binomial numbers
  
  
# ExponEntially distributed random numbers

     https://www.statology.org/exponential-distribution-real-life-examples/
     F(x; λ) = 1 – e-λx
     Example 1: Time Between Geyser Eruptions
     Example 2: Time Between Customers
     Example 3: Time Between Earthquakes 
     Example 4: Time Between Calls
     
    x=rexp(100, 1/1500)
    hist(x, probability=TRUE, col= gray(.9), main="exponential mean=1500")
    curve(dexp(x, 1/1500), add= T)
  
    
Convert HTML Characters To Strings
Converting Strings To Datetime
Create A New File Then Write To It
Create A Temporary File
Data Structure Basics
Date And Time Basics
Dictionary Basics
Display JSON
Display Scientific Notation As Floats
Exiting A Loop
Find The Max Value In A Dictionary
Flatten Lists Of Lists
For Loop
Formatting Numbers
Function Annotation Examples
Function Basics
Functions Vs. Generators
Generating Random Numbers With NumPy
Generator Expressions
Hard Wrapping Text
How To Use Default Dicts
if and if else
If Else On Any Or All Elements
Indexing And Slicing NumPy Arrays
Indexing And Slicing NumPy Arrays
Iterate An Ifelse Over A List
Iterate Over Multiple Lists Simultaneously
Iterating Over Dictionary Keys
Lambda Functions
Logical Operations
Looping Over Two Lists
Mathematical Operations
Mocking Functions
Nested For Loops Using List Comprehension
Nesting Lists
Numpy Array Basics
Parallel Processing
Partial Function Applications
Priority Queues
Queues And Stacks
Recursive Functions
repr vs. str
Scheduling Jobs In The Future
Select Random Element From A List
Selecting Items In A List With Filters
Set The Color Of A Matplotlib Plot
Sort A List Of Names By Last Name
Sort A List Of Strings By Length
Store API Credentials For Open Source Projects
String Formatting
String Indexing
String Operations
Swapping Variable Values
Try, Except, and Finally
Unpacking A Tuple
Unpacking Function Arguments
Use Command Line Arguments In A Function
Using Named Tuples To Store Data
while Statement


# Vectors, Matrices, And Arrays

Adding And Subtracting Matrices
Apply Operations To Elements
Calculate Dot Product Of Two Vectors
Calculate The Average, Variance, And Standard Deviation
Calculate The Determinant Of A Matrix
Calculate The Trace Of A Matrix
Converting A Dictionary Into A Matrix
Create A Matrix
Create A Sparse Matrix
Create A Vector
Describe An Array
Find The Maximum And Minimum
Find The Rank Of A Matrix
Flatten A Matrix
Getting The Diagonal Of A Matrix
Invert A Matrix
Reshape An Array
Selecting Elements In An Array
Transpose A Vector Or Matrix



# Data Visualization

Back To Back Bar Plot In MatPlotLib
Bar Plot In MatPlotLib
Color Palettes in Seaborn
Creating A Time Series Plot With Seaborn And pandas
Creating Scatterplots With Seaborn
Group Bar Plot In MatPlotLib
Histograms In MatPlotLib
Making A Matplotlib Scatterplot From A Pandas Dataframe
Matplotlib, A Simple Example
Pie Chart In MatPlotLib
Scatterplot In MatPlotLib
Stacked Percentage Bar Plot In MatPlotLib
