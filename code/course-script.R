
# This is a comment!
# Because of the hash (#) symbol at the beginning.

# Use ctrl + Enter to run a single line
# You can also select a section and use ctrl + Enter to run that section


# Let's Start ------------

## Calculator --------------------------------------------------------------

# basic operations
1 + 5

12 * 1.2356

8 ^ 2

pi / 2

8+(3+4)*(2^2)

1.34e3


# vectors
c(2,4,6)

c(2,4,6) + 2

c(3,5,8) + c(10, 11, 22)

1:3

1:3 * 2


# functions
log2(100)

log(100)

log10(100)

exp(1)

sqrt(2)


## Variables -----------------------------------------------------

# assignment

fruit <- "apple"

name <- "john"

age <- 27
age

# modification
age <- age + 1
age

# compare
5 > 3
5 > 5
5 >= 5
5 == 4 + 1

age_john <- 27
age_mary <- 31

# TODO Is John older than Mary?
age_john ___ age_mary



## Functions ---------------------------------------------------------------

# random numbers
runif(10)
rep(1:3, 4)
sample(letters, 5)

# Function parameters can be defined by name and by position
sample(replace = TRUE, x = 1:5, size = 10)
sample(10, TRUE, x = 1:5)


# Documentation
# Put your cursor on the function and type F1
?sample

# Type F2 to see the code
# or run the function itself without parenthesis
sample


## Data structures ---------------------------------------------------------
# Creation, subsetting

class(42)
class("apple")
class(5 > 3)


# Vector
vec1 <- c(2,4,6)
1:3
1:3 * 2

class(vec)

vec2 <- c(1,3,8,14)

# using the index
vec2[2]
vec2[c(1,3)]



# TODO make a vector of three fruits
fruits <- c("apple", ___)

length(fruits)


# factors
animals <- c("cat", "dog", "dog", "bird", "cat", "cat")
animals

ani_fact <- factor(animals)
ani_fact


# Matrix (Array)

nums <- runif(24)

mat <- matrix(nums, nrow = 6, ncol = 4)

# subsetting uses mat[ROWS, COLUMNS]
mat[1,1]
mat[c(2,3), 2]
# leave it empty to use all
mat[1,]

arr <- array(nums, c(3, 4, 2))
arr[1,1,1]


# List

mylist <- list(animals, nums, mat, arr)
class(mylist[1])
class(mylist[[1]])




# Dataframe (Tibble)
# A dataframe is a list where the elements have the same length





## subsetting --------------------------------------------------------------


## Dealing with errors -----------------------------------------------------

sample(1:5, size = 10)

# TODO fix the function by specifying another parameter
sample(1:5, size = 10, ___)



## Packages ----------------------------------------------------------------

# Let's check our R version first
# We can compare online to see how recent it is
version

# We can install from CRAN
install.packages("dplyr")
install.packages("tidyverse")

# or BioConductor
install.packages("BiocManager")
BiocManager::install("ComplexHeatmap")


# It is also possible to install directly from github
install.packages("remotes")
remotes::install_github("ipb-halle/MetFamily")

# To use a package, we need to attach (load) it
library(dplyr)


filter


# Example workflow --------------------------------------------------------

# Welcome to the tidyverse 
# includes readr, tibble, dplyr, ggplot2, stringr
library(tidyverse)



## Reading data ------------------------------------------------------------
library(readr)
library(readxl) # did it work?

read_csv

read_tsv

read_xlsx




## Wrangling with dplyr ----------------------------------------------------
library(dplyr)




## Saving data -------------------------------------------------------------

saveRDS

saved_rds <- readRDS

identical(dat1, saved_rds)


write_csv

csv1 <- read_csv

identical(dat1, csv1)

write_xl






## Side note: Regular Expressions ------------------------------------------

library(stringr)

fruits <- c("apple", "banana", "pineapple", "orange")

str_detect(fruits, "appl")

# which ones start with a "p"
str_detect(fruits, "^p")

# which ones start with a vowel?
str_detect(fruits, "^[aeiou]")

# TODO which ones have a vowel after a "n"
str_detect(fruits, "___")

str_remove(fruits, "a")
str_remove_all(fruits, "a")


## Figures with ggplot2 ----------------------------------------------------
library(ggplot2)





