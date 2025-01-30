#Vectors
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
ABC <- c(4, 62, 51, 21, 2, 14, 15)
CBS <- c(12, 75, 43, 19, 1, 21, 19)

#Dataframe
df <- data.frame(Name, ABC, CBS)

#Reading the dataframe
df
str(df)
summary(df)
difference <- df$ABC - df$CBS
names(difference) <- df$Name
difference
