# Basics of vectors
# Code from class 6


# A single or a sequence of multiple values of the same type
# numeric vectors
single_number <- c(1)
multiple_numbers <- c(1,2,3,4,5,6,7,9,9,10)

# create a sequence of numbers with :

1:10
1:100
1:10000
-10:10
0.5:8

# To create a sequence with a step other than 1

seq()
?seq
seq(-23, 100, 5)
seq(100, -100, -2)

# I want to create random number sequence
count <- c(9, 16, 3, 10)

mean(count)
max(count)
min(count)
median(count)
sum(count)
summary(count)

# character vectors
c("luna", "damian", "charles", "james", "anita", "austin")
luna <- "instructor"
damian <- "student"
c(luna, damian)

states <- c("FL", "FL", "GA", "SC")

str(states)
mode(states)
mode(count)

class(states)
class(count)

length(states)
length(count)

head(count)
head(1:100)
tail(1:100)

View(count)

# subset vectors: accessing elements within a vector
# I want the first and third element of the states vector
?subset
str(count)
count
# square brackets mean position min R
states[3]
# If I want more elements, I need a numeric vector with all the positions:
states[c(1,2)]
states[1,3]
states[1:3]
states[c(4,2,1,3)]

# logical vectors (values TRUE, FALSE)
# creating logical vectors with "is" functions
is.factor(count)
is.function(states)
is.vector(states)

my_logical <- c(FALSE, TRUE, TRUE, FALSE)

# relational statements: equal to, larger than, 
# smaller than, not equal to
# equal to with double ==
1 == 1
1 == 2

1 = 1
my_number = "luna"

1 > 1
1 >= 1 # larger or equal to 1
1 < 1
1 <= 1 # smaller or equal to
# ! means "not", means a negation
1 != 1
1 != 2

!TRUE
!FALSE

"a" == "a"
# property of coercion
"a" > "a"
"a" > "b"
"A" == "a"
"A" > "a"

# relational operations can be run on larger vectors

1:10 > 7

#############################################
# Basic vectors exercise
#############################################
subset(states, states == "GA")

# null values in R are represented by the symbol NA
# other type of null values are represented with NULL
NA
mode(NA)
mode(NULL)
?NULL
count_na <- c(9, 16, NA, 10)
mean(count_na, na.rm = TRUE)
min(count_na)

NA > NA
NA > 3
NA == NA

# simple math with vectors
 1 + 2
2 * 3
5 /7
5 ^ 3

states # different states
count # population number
area <- c(3, 5, 1.9, 2.7)

# obtain the population density per state 
# (number divided by area):
count > 3
density <- count / area # element-wise operation
count / c(1, 2) # the goal of R is to do element-wise 
# operations, so in this case it recycles the smaller 
# vector to match the number of elements in the larger 
# vector

1:10  > 7
states == "FL"

# filter vectors based on something
# filtering uses the same syntax as subsetting: [ ]
# subsetting based on a condition

count[c(TRUE, TRUE, FALSE, FALSE)]
# which command can generate a logical vector 
# like c(TRUE, TRUE, FALSE, FALSE)
count[states == "FL"]

# get the density values that are not from the state of FL

# get all states that have a density larger than 3
states[density > "3"] # works by coercion

# filter densities that are larger than 3

density[density > 3]
density_3 <- density > 3
density[density_3]
#


