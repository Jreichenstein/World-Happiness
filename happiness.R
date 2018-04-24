library(readr)
library(corrplot)

#Reading in World Happiness data to "happy"
happy <- read_csv("2017.csv")

#creating tibble with only numerical columns (minus rank)
happy_nums <- happy[,3:12]

#generating correlation matrix
corrMat <- cor(happy_nums)

#Correlation plot
corrplot(corrMat, method = "ellipse")

