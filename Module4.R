library(ggplot2)
library(tidyr)

Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
finaldecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

df <- data.frame(Freq, bloodp, first, second, finaldecision)
df

df$first <- factor(df$first, levels = c(0, 1), labels = c("Good", "Bad"))
df$second <- factor(df$second, levels = c(0, 1), labels = c("Low", "High"))
df$finaldecision <- factor(df$finaldecision, levels = c(0, 1), labels = c("Low", "High"))

ggplot(df, aes(x=first, y=bloodp)) +
  geom_boxplot()

ggplot(df, aes(x=df$second, y=df$bloodp)) +
  geom_boxplot()

ggplot(df, aes(x=finaldecision, y=bloodp)) +
  geom_boxplot()

ggplot(df, aes(x=bloodp)) +
  geom_histogram(binwidth=30, color="black")