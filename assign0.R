# A Very Short Introduction to R
# Michael Zuccaro
# 
# ToDo 1.)
# Compute difference between 2016 and year started at Seneca
# Divide this by difference between 2016 and year born
# Multiply this by 100 to get percentage of life spent at Seneca
((2016-2014)/(2016-1995))*100

# ToDo 2.)
# Repeat previous ToDo but with several steps in between
# Using variables with names starting with letters
schoolYear <- (2016-2014)
lifeYear <- (2016-1995)
lifeSpent <- (schoolYear/lifeYear) * 100

# ToDo 3.)
# Compute the sum of 4, 5, 8 and 11 by combining them into a
# vector and then using the function sum
vectorQ3 <- c(4, 5, 8, 11)
sum(vectorQ3)

# ToDo 4.)
# Plot 100 normal random numbers
randQ4 = rnorm(100)
plot(randQ4)

# ToDo 5.)
# Find help for the sqrt function
# Search 'sqrt' in the search bar under the 'Help' tab
# abs(x) computes the absolute value of x, sqrt(x) computes 
# the (principal) square root of x, √{x}.
help(sqrt)

# ToDo 6.)
# Make a file called firstscript.R that contains R-code that
# generates 100 random numbers and plots them.
source("firstscript.R")

# ToDo 7.)
# Put the numbers 31 to 60 in a vector named P and in a matrix
# with 6 rows and 5 columns named Q.
Q <- matrix(P <- c(31:60), nrow=6, ncol=5)
Q

# ToDo 8.)
# Constructs three random normal vectors of length 100
# Called x1, x2 and x3
# Make a data frame named 't' with three columns 'a', 'b', 'c'
# Containing respectively 'x1', 'x1+x2', 'x1+x2+x3'
# Then call the data frame with plot(t) and sd(t)
x1 <- c(rnorm(100))
x2 <- c(rnorm(100))
x3 <- c(rnorm(100))

t <- data.frame(a = x1, b = (x1+x2), c = (x1+x2+x3))
plot(t)
sd(t)

# ToDo 9.)
# Add the lines to the script fiile of the previous ToDo
# Try to find out what the meaning of rgb and the last argument
# of rgb, lwd, pch, cex
help(rgb)

# This changes the color scheme of the plot from ToDo 9.)
plot(t$a, type="l", ylim=range(t),lwd=3, col=rgb(1,0,0,0.3))
lines(t$b, type="s", lwd=2, col=rgb(0.3,0.4,0.3,0.9))
points(t$c, pch=20, cex=4, col=rgb(0,0,1,0.3))

# Creates colors corresponding to given values from a range
# of '0 and max'. The rgb values represent red, green and blue.
# pch: Plotting 'character', either signle character or an integer
#      code for a set of graphics symbols.
# lwd: The line width when drawing symbols.
# cex: This is for character or symbol expansion on a numerical
#      vector.

# ToDo 10.)
# Make a file called tst1.txt in Notepad from the example
# in the Figure 4 and then store it in your working directory
# Write a script to read it and multiply the column called 'g'
# by '5'. Store this as tst2.txt
varQ10a <- data.frame(read.table(file="/home/mzuccaro1/Desktop/Assignment 0/tst1.txt", header=TRUE))
varQ10b <- data.frame(a = varQ10a$a, g = varQ10a$g * 5, x = varQ10a$x)
write.table(varQ10b, file="/home/mzuccaro1/Desktop/Assignment 0/tst2.txt", row.names=FALSE)

# ToDo 11.)
# Compute the mean of the square root of a vector of 100
# random numbers? Whats the result?
vectorQ11 <- c(rnorm(100))
sqrtQ11 <- sqrt(vectorQ11)
sqrtQ11[is.na(sqrtQ11)] <- 0
mean(sqrtQ11)

# ToDo 12.)
# Make a graph with on the X-axis: Today, Sinterklass 2016, next birthday
# Y-axis: Number of presents you expect on these days
xAxeQ12 <- strptime(c("20160201", "20161205", "20160501"), format="%Y%m%d")
yAxeQ12 <- c(2, 0, 5)
plot(xAxeQ12, yAxeQ12, xlab='Days', ylab='Expected Presents')

# ToDo 13.)
# Make a vector from 1 to 100. Make a for-loop which runs
# through the whole vector. Then multiply the elements which are
# smaller than 5 or larger than 90 with 10 and the other elements
# with 0.1.
vectorQ13a <- c(1:100)
vectorQ13b <- c()

for(i in 1:length(vectorQ13a))
{
  if (vectorQ13a[i] < 5)
  {
    vectorQ13b[i] <- (vectorQ13a[i] * 10)
  }else if (vectorQ13a[i] > 90) {
    vectorQ13b[i] <- (vectorQ13a[i] * 10)
  }else {
    vectorQ13b[i] <- (vectorQ13a[i] * 0.1)
  }
}

vectorQ13b

# ToDo 14.)
# Write a function for the previous ToDo so that you can feed
# it any vector you like (as argument). Use a for-loop in the function
# to do the computation with each element. Use the standard R function
# 'length' in the specification of the counter

vectorTest <- rnorm(-100:100)

funQ14 <- function(arg1)
{
  vFunQ14 <- c()
  for(i in 1:length(arg1))
  {
    if (arg1[i] < 5)
    {
      vFunQ14[i] <- (arg1[i] * 10)
    }else if (arg1[i] > 90) {
      vFunQ14[i] <- (arg1[i] * 10)
    }else {
      vFunQ14[i] <- (arg1[i] * 0.1)
    }
  }
  return(vFunQ14)
}

funQ14(arg1 <- vectorQ13a)

# ToDo 15.)
# Bonus Question
vectorQ15 <- c(1:100)
ifelse(vectorQ15 < 5 | vectorQ15 > 90, vectorQ15 * 10, vectorQ15 * 0.1)