head (mtcars, 6)
list(mtcars, 6)
str(mtcars)
#plot(mtcars)
class(mtcars)

#Q1
#install.packages("pryr")
library(pryr)
otype(mtcars)

#Q2
typeof(mtcars)
x <- 1
typeof(x)

#Q5
#S3
hero <- list(name = "Knight", level = 10, hp = 100, attack = 5)
class(hero) <- "Character"

hero$name
hero$level
hero$hp
hero$attack
otype(hero)

#S4

setClass("Character", representation(name = "character", level = "numeric", hp = "numeric", attack = "numeric"))
s4 <- new("Character", name = "Knight", level = 10, hp = 100, attack = 5)
otype(s4)
