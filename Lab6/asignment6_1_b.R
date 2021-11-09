#(b) Perform K-Means Clustering selecting the best value of k and taking Euclidean distance
#as similarity measure. Check your algorithm with the following three conditions
#, visulaise the clusters and note the difference
#i. Maximum number of iterations
#ii. Cluster centroid remains unchanged
#iii. Highest quality of cluster is reached.

# i am trying with ToothGrowth data, here we drop column 2 supp as we are doing clustering problem
MyToothGrowth=select(ToothGrowth,c(1,3))
# omit any missing values
MyToothGrowth <- na.omit(MyToothGrowth)
# As we don't want the clustering algorithm to depend to an arbitrary variable unit, we start by scaling/standardizing the data using the R function
MyToothGrowthscaled <- scale(MyToothGrowth)
head(MyToothGrowthscaled)
plot(MyToothGrowthscaled)
# here we see about 3 clusters if we visualize with plain eyes, so we may go with k=3 or may be we can run some more logic to get k using elbow method.
fitK <- kmeans(MyToothGrowthscaled,3)

# K means clustering
# extract cluster membership
str(fitK)

plot(MyToothGrowth, col=fitK$cluster)


## CHOOSING K by iterative process.
k <- list()
for(i in 1:10){
  k[[i]] <- kmeans(MyToothGrowthscaled[,1:2], i)
}

k

# we see 10 iteration with every iteration between_SS / total_SS slightly increasing finally after 10th loop we are getting (between_SS / total_SS =  98.5 %)

betweenss_totss <- list()
for(i in 1:10){
  betweenss_totss[[i]] <- k[[i]]$betweenss/k[[i]]$totss
}

plot(1:10, betweenss_totss, type = "b", 
     ylab = "Between SS / Total SS", xlab = "Clusters (k)")

# we get a graph where the elbow is at 3

# so clearly cluster count is 3.
for(i in 1:3){
  plot(MyToothGrowth, col = k[[i]]$cluster)
}

# HIERACHICAL CLUSTERING ----
d <- dist(MyToothGrowthscaled[, 1:2])
fitH <- hclust(d, "ward.D2")
plot(fitH) 

rect.hclust(fitH, k = 3, border = "red") 
clusters <- cutree(fitH, k = 3) 
plot(MyToothGrowth, col = clusters) 

# Model based clustering
library(mclust)
fitM <- Mclust(MyToothGrowthscaled)
plot(fitM)

# DENSITY-BASED CLUSTERING ----
library(dbscan)
kNNdistplot(MyToothGrowthscaled, k = 3)
abline(h = 0.7, col = "red", lty = 2)
fitD <- dbscan(MyToothGrowthscaled, eps = 0.7, minPts = 5)
fitD
plot(MyToothGrowth, col = fitD$cluster)


