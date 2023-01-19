# GGPLOT & ANALYSIS
```bash
$ library(readxl)
data <- read_xlsx("/home/akanksha/Downloads/data.xlsx")
```
#ggplot fuction
```bash
$ library(ggplot2)
$ library(reshape2)
ggplot(data)
ggplot(data , aes(x = conc , y =treated)) + geom_point()
x <-ggplot(data , aes(x = conc , y =untreated)) + geom_point()
y <- x + geom_line()
```
#Melt the dataset via function = melt (library = reshape2) to get the both treated and untreated
```bash
$ x1 <- melt (data,id.vars = "conc" , measure.vars = c ("treated","untreated"))
x1
```
#Change the names of the columns
```bash
$ colnames(x1) <- c ("conc","sample","abs")
x1
```
#Plot the scatter plot
```bash
$ library(ggplot2)
w <- ggplot(x1 , aes(x = conc , y= abs , col=sample)) +geom_point() #ggplot_1
v <- w +geom_line()  #ggplot_2
v
s <- w + geom_smooth(span = 2 ,se = FALSE)  #ggplot_3
s
```
#With confidence interval
```bash
$ s <- w + geom_smooth(span = 2 ,se = TRUE)  #ggplot_4
s
```
