library(lattice)
library(ggplot2)

CASchools <- read.csv("C:/Users/bress/Downloads/CASchools.csv")
CASchools$score <- with(CASchools, (math + read)/2)

#R
box <- boxplot(CASchools$score, 
        main = "Distribution of Average Test Scores",
        ylab = "Average Test Score (Math + Reading)")

box

#Lattice
CASchools$CompPerStudent <- with(CASchools, computer/students)
ComputersPerStudent <- xyplot(score ~ CompPerStudent, data = CASchools,
                              main = "Average Test Scores vs. Computers Per Student",
                              xlab = "Computers Per Student", 
                              ylab = "Average Test Score",
                              pch = 16, col = "blue",
                              panel = function(x, y, ...) {
                                panel.xyplot(x, y, ...)
                                panel.lmline(x, y, col = "red", lwd = 2)
                              })

ComputersPerStudent

#ggplot2
county_scores <- aggregate(score ~ county, data = CASchools, FUN = mean)
CountyPlot <- ggplot(county_scores, aes(x = county, y = score, fill = score)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Average Test Scores by County",
       x = "County", 
       y = "Average Test Score")

CountyPlot
