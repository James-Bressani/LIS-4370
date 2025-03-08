#install.packages("plyr")
#install.packages("ISLR")
library(plyr)
require(pryr)
require(ISLR)
require(boot)
library(data.table)
setwd("C:/Users/bress/Downloads/")

Student <- read.table("C:/Users/bress/Downloads/Assignment 6 Dataset.txt", header = TRUE, sep = ",")

#ddply groups by a column
StudentAverage <- ddply(Student, "Sex", transform, Grade.Average = mean(Grade))
#StudentAverage
# Sex <- Student$Sex
# mean(Sex)
write.table (StudentAverage, "GradeAverage.txt",row.names=F, sep = ",")

IStudents <- subset(Student, grepl("i", Student$Name, ignore.case = T))
IStudents
write.table (IStudents, "IStudents.txt",row.names=F, sep = ",")

write.csv(StudentAverage, "GradeAverage.csv", row.names=F)
write.csv(IStudents, "IStudents.csv", row.names=F)