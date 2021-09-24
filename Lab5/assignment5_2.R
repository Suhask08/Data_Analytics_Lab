#Perform the following:
#  (a) Define a normalized vector P.
#  (b) Define a normalized vector Q.
#  (c) Combine P and Q as matrix object. Please note that when defining a matrix from
#  vectors, the vectors should be combined as rows.
#  (d) Compute the Euclidean Distance with default parameters


# define a probability density function P
P <- 1:10/sum(1:10)
# define a probability density function Q
Q <- 20:29/sum(20:29)

# combine P and Q as matrix object
x <- rbind(P,Q)

library(philentropy)

# compute the Euclidean Distance with default parameters
distance(x, method = "euclidean")
