#CORRELATION of 2 variables (Sepal length an petal length) from IRIS dataset
#For linear Association
x <- iris
x1 <- subset(x, Species == "virginica") #creating a subset for the species virginica
library(ggplot2)
y <- ggplot(x1 , aes(x= Sepal.Length , y = Petal.Length))+geom_point()   #creating a GG plot for the same variables. 
#The plot shows a linear association between both the variables.
#Calculate the linear correlation coefficient (Pearson linear coefficient)
c1 <- cor(x1$Sepal.Length,x1$Petal.Length)  #Function used for the linear coefficient = COR
#As the value of the pearson linear coefficient is ~ 1 , it shows that both the variables i.e P.length and S.length are linearly associated. 
#Correlation for the entire dataset
c2 <- cor(x1)   #result will form a correlation matrix
#For Non linear association
# 1. SPEARMAN CORRELATION
c3 <- cor(x1$Sepal.Width,x1$Petal.Width, method = "spearman") #Which is less so, It is not a non-linear correlation
# 2. KENDALL CORRELATION
c4 <- cor(x1$Sepal.Length,x1$Petal.Length,method = "kendall")
