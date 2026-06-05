#created: 2026-06
# author: Guillaume Patoine <gpatoine@ipb-halle.de>

# This is a comment!
# Because of the hash (#) symbol at the beginning.

# Use ctrl + Enter to run a single line
# You can also select a section and use ctrl + Enter to run that section


# 2. Let's Start -----------------------------------------------------------

## R as Calculator ----

# Basic operations
1 + 1

12 * 1.2356

8 ^ 2

pi / 2

8+(3+4)*(2^2)

1.34e3


# Math functions
log(100) # natural log

log2(100)

log10(100)

sqrt(2)


## Variables ----
x <- 10
y <- 5
x + y

y <- 7
y <- y + 1
y


# Comparisons
5 > 3
5 > 5
5 >= 5
5 == 4 + 1

age_john <- 27
age_mary <- 31

# TODO Is John older than Mary?
age_john ___ age_mary


## Vectors ----
vec <- c(5,7,12)
vec
length(vec)

# Operations happen component-wise!
vec + 2
c(3,5,8) + c(10, 11, 22)
sqrt(vec)

# Colon creates a series of numbers
1:3
5:8 * 2

# Summary functions
mean(vec)
sum(vec)
max(vec)
sd(vec)


## Types of variables ----
name <- "Alice"
age <- 25
is_student <- TRUE

class(name)
class(age)
typeof(age)

# TODO what do you expect?
class(5 > 3)

# Type conversion
c(1, "2", 3)

as.numeric("3")
as.character(5)
as.logical(1)

as.numeric(c("1", "2", "a"))


# Missing values
nums <- c(3,5,NA)
mean(nums)
sqrt(-2)

mean(nums, na.rm = TRUE)



## Data structures in R ----

# Vector indexing
vec <- c(4,6,2,11)
vec[2]
vec[c(1,4)]

vec[-2]
vec[-c(1,4)]

vec[vec > 3]

# TODO make a vector of three fruits
fruits <- c("apple", ___)
length(fruits)


# Matrices and arrays
mat <- matrix(1:6, nrow = 2)
mat
class(mat)

mat[1,3]
mat[1,]


# Lists
lst <- list(
  name = "Alice",
  age = 25,
  scores = c(10, 20, 30),
  fav_colors = c("purple", "turquoise")
)

lst

# Use [] to subset a list
# Use [[]] to take elements out
mylist <- list(1:3, "a", 4:6)
class(mylist[1])
class(mylist[[1]])


# Data frames and tibbles
df <- data.frame(
  name = c("Alice", "Bob", "Josh"),
  age = c(25, 30, 20),
  wears_glasses = c(TRUE, FALSE, TRUE)
)

df

df$age
df[1, ]
df[, "name"]
df[df$age > 21,]
df[!df$wears_glasses,]



## Functions ----

seq(from = 2, to = 8)

# Writing a function
add_one <- function(x) {
  x + 1
}
add_one(10)

# Documentation
# Also try F1 and F2 on the function name
?seq
sample

# Arguments
seq(2,11,3)
seq(by = 3, from = 2, to = 11)
seq(to = 11, 3, from = 2)



# 3. A data analysis workflow -----------------------------------------------------

## Setup ----

getwd()
version


## Packages ----

install.packages("tidyverse")
library(tidyverse)

# TODO read the messages, what does it mean?


# The %>% pipe
1:10 %>%
  mean()

mean(1:10)

1:10 %>%
  sqrt() %>%
  mean()




# HERE

## Reading data ----
library(readr)
library(readxl) # did it work?

read_csv

read_tsv

read_xlsx




## Wrangling with dplyr ----
library(dplyr)


## Side note: Regular Expressions

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



## Saving data ----

saveRDS

saved_rds <- readRDS

identical(dat1, saved_rds)


write_csv

csv1 <- read_csv

identical(dat1, csv1)

write_xl









## Figures with ggplot2 ----
library(ggplot2)


# Load metabolic dataset

# PCA

# Heatmap








# Bonus -------------------------------------------------------------------

# factors
animals <- c("cat", "dog", "dog", "bird", "cat", "cat")
animals

# factors have levels, and are encoded as numbers
ani_fact <- factor(animals)
ani_fact
as.numeric(ani_fact)


# Dealing with errors
sample(1:5, size = 10)

# TODO fix the function by specifying another parameter
sample(1:5, size = 10, ___)


# Some common functions used. Look up what they do.
runif(10)
rep(1:3, 4)
sample(letters, 5)


# What does the following function do?
mystery_fct <- function(number) {
  
  if (number > 0) {
    return("positive")
  } else if (number < 0) {
    return("negative")
  } else {
    return("zero")
  }
  
}