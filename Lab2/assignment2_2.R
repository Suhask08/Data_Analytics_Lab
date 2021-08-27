
### Question 2(a)
# loading iris dataset
df <- read.csv("E:/puchu/data_analytics_lab/assignment_2/Iris.csv")
View(df)

### Question 2(b)
# finding the mean of all metrics in iris
#colMeans(df[sapply(df, is.numeric)])
findmean <- aggregate(x =df2 , by=list(df2$Species), function(x) mean(1:4))

### Question 2(c)
# finding sum of all the metrices and group by metrices
findsum <- aggregate(x =df2 , by=list(df2$Species), function(x) sum(1:4))
### Question 2(d)
# counting metrices of all the species
# count number of c in each columnn
countedValues <- aggregate(x= df, by= list(df$Species), function(x) length(x))
countedValues

### Question 2(e)
# maximum of all the species
# maximum of c in each column
maxValues <- aggregate(x= df, by= list(df$Species), max)
maxValues
