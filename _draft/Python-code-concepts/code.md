How to list ALL 'Conda or pip packages
15th August 2018 at 10:21am
conda list
conda list | sort > conda_list.txt

pip list
pip list | sort > conda_list.txt


-----------



print('Converting strings to ints')
try:
    print(int('x'))
except:
    print('Conversion Failed')
else:
    print('Conversion scuccessful')
print('Done')   


------------------

Check For Anagrams
15th December 2018 at 10:56pm

from collections import Counter
def is_anagram(word1, word2):
    """Checks whether the words are anagrams.
    word1: string
    word2: string
    returns: boolean
    """
    return Counter(str1) == Counter(str2) 



--------------


Evaluate a String as R Code
mcc29th November 2021 at 9:47pm
Evaluate a String as R Code
''.eval <- function (evaltext,envir=sys.frame()) {''
>''eval (parse (text=evaltext), envir=envir)''
>''}''



------------

Extended unpacking (Python-3 only) - Tip
15th August 2018 at 10:12am
Goal: Get the smallest and largest cities from a list

# ordered by population
cities = ['Providence', 'Boston', 'Los Angeles', 'New York']
# Bad Example
cities = smallest, _, _, largest

# Better example
smallest = cities[0]
largest = cities[-1]
Best Example

# Even Better way
cities = smallest, *rest, largest

print('smallest: %s' % smallest)
print('largest: %s' % largest)

-----------




File reading using 'with' - Tip
25th November 2018 at 5:45pm
Bad example

f = open('some.txt')
text = f.read()
for line in text.split('\n'):
    print(line)
f.close()
Better example

with open('some.txt') as f:
    for line in f:
        print(line)    
        
-------------



Finding dna motifs
15th August 2018 at 10:13am
Given some DNA, print out the most frequent 5-mer motifs.
k = 5
dna = "acdtcgctatcgtatcgatcgctagctagctagtc"

kmer = {}
for i in range(len(DNA) - k + 1):
    motif = dna[i:i+k]
    if not motif in kmers:
        kmers[motif] = 0
    kmers[motif] += 1
    
all = sorted(kmers.items(), key = operator.itemgetter(1))
print all[1:5]



--------------

For ... else - Tip
15th August 2018 at 10:13am
needle = 'd'
haystack = ['a', 'b', 'c']
Bad example

found = False
for letter in haystack:
    if needle == letter:
        print('Found')
        found = True
        break
if not found:
    print('Not found')
Better example

for letter in haystack:
    if needle == letter:
        print('Found')
        break
else: # if no break found:
    print('Not found')
    
    
    
    
    
----------------


Convert csv to json
mcc29th November 2021 at 11:51am
import csv,json;reader = csv.DictReader(open('data/example.csv', 'r'), fieldnames=( "User","Country","Age"))
out=open('data/out.json','w'); out.write(json.dumps([row for row in reader]))
JSON (JavaScript Object Notation) is a lightweight data-interchange format. It is easy for humans to read and write. Converts a given file of comma separated values to json and store it in another file. The csv used here doesn’t contain headers for the columns.

csv.DictReader(open('data/example.csv', 'r'), fieldnames=( "User","Country","Age")) gets us the DictReader object from the csv file with three columns specified as fieldnames. json.dumps([row for row in reader]), converts the json object to string for writing it in output file and out.write() method writes the data into the file.

To run it for arbitrary files

$ python -c "import csv,json,sys;reader = csv.DictReader(open(sys.argv[1], 'r'), fieldnames=( "User","Country","Age"));out=open('data/out.json','w'); out.write(json.dumps([row for row in reader]))" data/example.csv



----------------------


Get alternate lines from files starting from the top
21st November 2018 at 11:43pm
Creates a new file with alternate lines of the input file.

Here, slicing operation, [::2], is defined with a step=2. Which will extract every 2nd item of the list. Thus, creating a list of every alternate line from a file.

python -c "import sys; c = open('alternate.txt','w'); c.write('\n'.join([x for x in open(sys.argv[1], 'r').read().split('\n')[::2]])); c.close()" data/100west.txt

------------------


How to merge 2 Dictionarys in Python 3
19th November 2018 at 11:51pm
x = {'a': 1, 'b': 3}
y = {'c': 5, 'b': 3}

z = {**x, **y}

------------


Ggplot2 Code Example
mcc15th August 2018 at 10:27am
require (ggplot2)

x <- round ( rnorm ( 1000, 100, 15 )) + rnorm (1000)*15

dens.x <- density (x)
empir.df <- data.frame ( type = 'empir', x = dens.x$x, density = dens.x$y)
norm.df <-  data.frame ( type = 'normal', x = 50:150, density = dnorm (50:150,100,15))
df <- rbind ( empir.df, norm.df)
m <- ggplot ( data = df, aes (x,density))
m + geom_line ( aes (linetype = type, colour = type))

----------------


K-Means - kmeans_mehdi.R
mcc29th November 2021 at 9:23pm
K-Means algorithm from kmeans_mehdi.R
#k = 3 # the number of K's
max = 5000 # the maximum number for generating random points
n = 100 # the number of points
maxIter = 10 # maximum number of iterations
threshold = 0.1 # difference of old means and new means

# Randomly generate points in the form of (x,y)
x <- sample(1:max, n)
y <- sample(1:max, n)

# put point into a matrix
z <- c(x,y)
m = matrix(z, ncol=2)

ks <- c(1, 2, 4, 8, 10, 15, 20) # different Ks
for(k in ks) {
   myKmeans(m, k, max)
}

myKmeans <- function(m, k, max) {
#initialization for k means: the k-first points in the list
x <- m[, 1]
y <- m[, 2]
d=matrix(data=NA, ncol=0, nrow=0)
for(i in 1:k) {
    d <-  c(d, c(x[i], y[i]))
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
cl <- Clustering(m, means)
oldMeans <- means
means <- UpdateMeans(m, cl, k)
thr <- delta(oldMeans, means)
itr <- itr+1
}

cl
thr
means
itr

for(km in 1:k){
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

# compute euclidean distance
euclid <- function(a,b) {
	d<-sqrt(a**2 + b**2)
}
euclid2 <- function(a) {
	d<-sqrt(sum(a**2))
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


--------------------------------------



Lambda functions
15th August 2018 at 10:22am
The lambda keyword in Python provides a shortcut for declaring small and anonymous functions:
>>> add = lambda x, y: x + y
>>> add(5, 3)
8

You could declare the same add() function with the def keyword:
>>> def add(x, y):
...     return x + y
>>> add(5, 3)
8

So what's the big fuss about? Lambdas are *function expressions*:
>>> (lambda x, y: x + y)(5, 3)
8

Lambda functions are single-expression functions that are not necessarily bound to a name (they can be anonymous).
Lambda functions can't use regular Python statements and always include an implicit return statement.


-------------------------



Measure the execution time of small bits of Python code with the "timeit"
15th August 2018 at 10:22am
The "timeit" module lets you measure the execution time of small bits of Python code
>>> import timeit
>>> timeit.timeit('"-".join(str(n) for n in range(100))',
                  number=10000)
0.3412662749997253

>>> timeit.timeit('"-".join([str(n) for n in range(100)])',
                  number=10000)
0.2996307989997149

>>> timeit.timeit('"-".join(map(str, range(100)))',
                  number=10000)
0.24581470699922647

---------------------

Pad Numeric Vars to Strings of Specified Size
mcc29th November 2021 at 9:54pm
Pad Numeric Vars to Strings of Specified Size

pad0 <- function(x,mx=NULL,fill=0) {
     lx <- nchar(as.character(x))
    mx.calc <- max(lx,na.rm=TRUE)
    if (!is.null(mx)) {
       if (mx<mx.calc) {
          stop("number of maxchar is too small")
      }
   } else {
      mx <- mx.calc
   }

   px <- mx-lx
paste(sapply(px,function(x) paste(rep(fill,x),collapse="")),x,sep="")


-------------------------


Pronounceable passwords
25th November 2018 at 6:44pm
Creates a random ‘-‘ separated 4 word password from the given input text file to be used as a password

import random
words = open('/usr/share/dict/words').read().split()
".1.".join([random.choice(words) for _ in range(3)])



-------------------------


R - Reserved Letters
mcc15th August 2018 at 10:44am
R has reserved letters
which cannot be used for variable names
c( )	Combine
t( )	Transpose (matrices)
q( )	Quit
/t	Tab
C( )	Sets a contrast attribute
D( )	Computes derivatives
I( )	Inhibits a change in the class of a value
F	FALSE
T	TRUE



-------------------------




R - Significant Figures
mcc14th August 2018 at 7:11pm
result <- c(9.50863385275955e-05, 4.05702267762077, pi, sqrt(2))

signif (result, digits = 4) # Significant Figures command



-------------------------



R Performance Tip
21st December 2018 at 3:18pm
From Winston Chang, @winston_chang

rstats performance tip:
If you must grow a vector in a loop, make sure there's only one reference to it so that R doesn't have to make a copy on each iteration.

# 6 seconds:
x <- integer()
for(i in 1:5e4) x <- c(x, i)

# 0.02 seconds:
x <- integer()
for(i in 1:5e4) x[i] <- i


# For timing
ptm <- proc.time()
# //code//
proc.time() - ptm

--------------------

R Set Functions
mcc15th August 2018 at 10:39am
Function	Description
union (x, y)	Performs set unions, intersections, (asymmetric!) difference, equality and membership on two vectors.

While setequal will discard any duplicated values in the arguments.
intersect (x, y)
setdiff (x, y)
is.element (el, set)
setequal (x, y)



-------------------------



Time Code in R
20th August 2018 at 4:17pm
# Start the clock!
ptm <- proc.time()

# Code to measure
for (i in 1:100000){
	h[i] <- g[i] + 1
}

# Stop the clock
proc.time() - ptm


-
-------------------------



Using 'itertools.chain' in Python
19th November 2018 at 11:45pm
Use itertools.chain to iterate over items in separate lists:
from itertools import chain

x = [1, 2, 3]
y = [5, 6, 7]
z = ['a', 'b']

for item in chain(x, y, z):
    print(item)
    
    
    -----------------


Using carriage return in print makes the line replaceable
19th November 2018 at 11:39pm
Using carriage return in print makes the line replaceable
for i in range(20):
    print(f'Number {i}', end='\r') 
Useful for creating something like progress bar!
for i in range(10):
    print(f'{i//10*100}% complete!', end='\r')    
    
    
-------------------------

Using zip() - Tip
15th August 2018 at 10:19am
x_list = [1,2,3]
y_list = [4,5,6]
Bad example

for i in range(len(x_list)):
    x = x_list[i]
    y = y_list[i]
    print(x, y)
Better example

for x, y in zip(x_list, y_list):
    print(x, y) 
  


-------------------------




Working with Collections - Tip
15th August 2018 at 10:18am
Goal: Create a dict where butterfly-species names are keys and the observation counts are values. Next, print out the number of times that a non-observed species (eg Palmfly) are observed (0 times).

import collections

butterfly_observations = {
    'Brown_Clipper'           :2,
    'Common Mormom'           :11,
    'Giant Atlas Moth'        :1,
    'Blue Peacock'            :3
    }
Bad Example

if 'Palmfly' in butterfly_observations:
    palmfly_observations = butterfly_observations['Palmfly']
else:
    palmfly_observations = 0
Better way

palmfly_observations = butterfly_observations.get('Palmfly', 0)

# Best Example
d = collections.defaultdict(lambda: 0)
d.update(butterfly_observations)
palmfly_observations = d['Palmfly']

print('Palmfly observations: %d % palmfly_observations)





-------------------------

ML Questions for MCC
mcc29th November 2021 at 9:08pm
1. What is machine learning?

2. Name applications of machine learning.

3. Explain the following machine learning areas and tasks: supervised learning, unsupervised learning, reinforcement learning, classification, regression, clustering, feature selection, feature extraction, and topic modeling.

4. Explain the following machine learning approaches: decision tree learning, artificial neural networks, and Bayesian networks.

5. What are the advantages and disadvantages of the various approaches?

6. Which kinds of products can be used for machine learning in practice?

7. How to engineer a machine learning application?

8. Explain precision, recall, and F-measure

9. Why to separate training data set and test data set for validation?

-------------------------


Make a random DNA sequence, consisting of a 100 random selections of the letters C,A,G,T, and paste the result together into one character string.

set.seed(123)
dna <- c("c","a","g", "t","n")
dna100  <- sample(dna, size=100, replace=TRUE)
paste(dna100)





-------------------------

http://datasciencemasters.org/

-------------------------




rbind Vs. cbind Vs. matrix
mcc29th November 2021 at 9:59pm
rbind ( ) # Binds rows together, FILLS ROWS FIRST:
rbind (c(56,8,4,7,86), c(2,16, 32, 54, 86))


-------------------------




collections.defaultdict - Tip
14th August 2018 at 5:33pm
import collections
import string

cities = ['providence', 'boston', 'los angeles', 'new york']
populations = [250_000, 750_000, 3_900_000, 9_000_000]
Good example

d = collections.defaultdict()

print(d)

----------------------


https://jeffdelaney.me/blog/useful-snippets-in-pandas/


JEFF DELANEYrésuméprojectsblog
19 Essential Snippets in Pandas
Aug 26, 2016

After playing around with Pandas Python Data Analysis Library for about a month, I’ve compiled a pretty large list of useful snippets that I find myself reusing over and over again. These tips can save you some time sifting through the comprehensive Pandas docs.

For this article, we are starting with a DataFrame filled with Pizza orders. If you’re brand new to Pandas, here’s a few translations and key terms.

DataFrame - Indexed rows and columns of data, like a spreadsheet or database table.
Series = Single column of data.
Axis - 0 == Rows, 1 == Columns
Shape - (number_of_rows, number_of_columns) in a DataFrame
1. Importing a CSV File





-------------------------
Sort Linux Commands
27th November 2021 at 10:33pm
1. sort a space-delimited file based on its first column, then the second if the first is the same, and so on:

sort input.txt
2. sort a huge file (GNU sort ONLY):

sort -S 1500M -t $HOME/tmp input.txt > sorted.txt
3. sort starting from the third column, skipping the first two columns:

sort +2 input.txt
4. sort the second column as numbers, descending order; if identical, sort the 3rd as strings, ascending order:

sort -k2,2nr -k3,3 input.txt
5. sort starting from the 4th character at column 2, as numbers:

sort -k2.4n input.txt
6. Sort and remove duplicate lines in a file in one step without intermediary files

Explanation

We open a file with vi and run two vi commands (specified with +):
%!sort | uniq
% = range definition, it means all the lines in the current buffer.
! = run filter for the range specified. Filter is an external program, in this example sort | uniq
wq = write contents to file and quit.
vi +'%!sort | uniq' +wq file.txt

-------------------------
| ''Source of Variability'' | ''Sum of Squares'' | ''Degrees of Freedom'' | ''Mean Squares'' | ''F-value'' |
|!|>|>|>|>|
| ''Treatment Variability'' | ''SSB''<br>Sum of Squares Between Columns | Columns - 1 | ''MSB''<br>Sum of Squares Within Columns | [[F-Critical Value|http://mathworld.wolfram.com/F-Distribution.html]] |
| ''Variability Due To Error'' | ''SSW''<br> S.S. Within Treatment<br>{''SSE''-Sum of Squares of Error} | __(R-1)*C__<br>(Rows-1)*Columns | ''MSW''<br>''MSW = Variance = s^^2^^'' | |
| ''Total'' | ''TSS''<br>Total Sum of Squares<br>''TSS = SSB + SSE'' | __(R*C)-1__<br>Rows*Columns - 1 | | |

-------------------------


-------------------------


-------------------------


-------------------------


-------------------------































