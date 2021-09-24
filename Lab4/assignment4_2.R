#2a)Draw an estimated density curve for the logarithms of the values.
library(MASS)
 plot(density(Animals$body))
 logbody <- log(Animals$body)
 plot(density(logbody))
 
#2b)Determine the mean and standard deviation of log(Animals$body). Overlay the es-
 # timated density with the theoretical density for a normal distribution with the mean
#and standard deviation just obtained.
  av <- mean(logbody)
 sdev <- sd(logbody)
 xval <- pretty(c(av - 3 * sdev, av + 3 * sdev), 50)
 lines(xval, dnorm(xval, mean = av, sd = sdev))
 
 