# install.packages("devtools")
# devtools::install_github("James-Bressani/LIS-4370")
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) { return(sum(assignment2)/length(assignment2)) }
myMean(assignment2)
mean(assignment2)
# > myMean(assignment2)
# [1] 19.25
# > mean(assignment2)
# [1] 19.25
# The myMean function takes an argument (assignment2) and adds up each element and divides it by the total amount of elements in the vector
#This finds the mean and is correct
#You can see it comes up with the same mean as the built in R function