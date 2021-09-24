# Question 4

# Question 4(a) : 
iris_df <- read.csv("E:\\Mtech\\Semister III\\Data Analyics\\Lab3\\Iris.csv")
iris_df

# Question 4(b)
color2 <- c("red","green")
plot(x = iris_df$PetalLengthCm, y= iris_df$PetalWidthCm,
     xlab="Petal Length",
     ylab=" Petal Width",
     main =" Petal Length vs Petal width",
     col = color2,
     cex = 1,
     pch = 16)

petalLength_setosa <- iris_df$PetalLengthCm[iris_df$Species =="Iris-setosa"]
petalLength_versicolor <- iris_df$PetalLengthCm[iris_df$Species =="Iris-versicolor"]
petalLength_virginica <- iris_df$PetalLengthCm[iris_df$Species=="Iris-virginica"]

petalWidth_setosa <- iris_df$PetalWidthCm[iris_df$Species == "Iris-setosa"]
petalWidth_versicolor <- iris_df$PetalWidthCm[iris_df$Species == "Iris-versicolor"]
petalWidth_virginica <- iris_df$PetalWidthCm[iris_df$Species == "Iris-virginica"]
petalWidth_virginica 


plot(x = petalLength_setosa, y= petalWidth_setosa,
     xlab="Petal Length",
     ylab=" Petal Width",
     main =" Petal Length vs Petal width (setosa)",
     col = color2,
     cex = 1,
     pch = 16)

plot(x = petalLength_versicolor, y= petalWidth_versicolor,
     xlab="Petal Length",
     ylab=" Petal Width",
     main =" Petal Length vs Petal width (Versicolor)",
     col = color2,
     cex = 1,
     pch = 16)

plot(x = petalLength_virginica, y= petalWidth_virginica,
     xlab="Petal Length",
     ylab=" Petal Width",
     main =" Petal Length vs Petal width (Virginica)",
     col = color2,
     cex = 1,
     pch = 16)

# Question 4(c)
cosine(petalLength_setosa, petalLength_versicolor)
cosine(petalLength_versicolor, petalLength_virginica)
cosine(petalLength_setosa, petalLength_virginica)


cosine(petalWidth_setosa, petalWidth_versicolor)
cosine(petalWidth_versicolor, petalWidth_virginica)
cosine(petalWidth_setosa, petalWidth_virginica)
