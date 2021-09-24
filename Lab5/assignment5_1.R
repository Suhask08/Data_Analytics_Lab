#1.Perform the following tasks:
#  (a) Import mtcars dataset.
#  (b) Visualize your data using scatter plots
#  (c) Compute the Correlation between mpg and wt variables.

mtcars
head(mtcars)
library(ggplot2)
#Creating a Basic Scatterplot
ggplot(mtcars, aes(wt, y=mpg)) + geom_point()
#Add names to x and y axis
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point() + scale_x_continuous("Weight of Car") + scale_y_continuous("Miles Per Gallon")

#Caluclate the correlation coefficient
cor(mtcars$wt, mtcars$mpg)
