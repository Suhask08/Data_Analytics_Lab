#(c) Repeat the Q.2 taking Manhattan distance as similarity measure and note the difference
#between the clusters as compared to that found in Q. 2.
library(amap)
fitK <- Kmeans(MyToothGrowthscaled,3,method="euclidean")
str(fitK)
plot(MyToothGrowthscaled, col=fitK$cluster, pch = 19 )


fitK <- Kmeans(MyToothGrowthscaled,3,method="manhattan")
str(fitK)
plot(MyToothGrowthscaled, col=fitK$cluster,  pch = 19 )
