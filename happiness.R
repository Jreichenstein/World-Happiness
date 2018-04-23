library(readr)
library(corrplot)

#Reading in World Happiness data to "happy"
happy <- read_csv("2017.csv")

#creating tibble with only numerical columns
happy_nums <- happy[,2:12]

#generating correlation matrix
corrMat <- cor(happy_nums)

#Correlation plot
corrplot(corrMat, method = "ellipse")