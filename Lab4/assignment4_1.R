#(a)Take a random vector and probability associated with it and plot it with a bar graph
barplot(table(sample(1:5, size = 15, replace = T,prob = c(0.3,0.8,0.6,0.4,0.2))));



#(b)create a cumulative frequency table and plot the cumulative frequency against each sample point  in the vector
data <-table(vec);
cumfreq_data <- cumsum(data);
print (cumfreq_data);

barplot(cumfreq_data);

#(c) 
n<-0:10
probability<-dbinom(x = n,size = 10,prob = 0.16);
plot(x = n,y = probability,type = 'h',xlab = " ",ylab = "Probability", sub = "Number of kids with blue eyes");

#(d)
par(mfrow=c(2,2)) 
plot(0:10,dbinom(0:10,10,0.05),type='h',xlab="",ylab="Prob", sub="p=0.05")
plot(0:10,dbinom(0:10,10,0.2),type='h',xlab="",ylab="Prob", sub="p=0.2")
plot(0:10,dbinom(0:10,10,0.5),type='h',xlab="",ylab="Prob", sub="p=0.5")
plot(0:10,dbinom(0:10,10,0.8),type='h',xlab="",ylab="Prob", sub="p=0.8")

#(e) 
c<-0:10
poisson<-dpois(x = c, 0.2)
data.frame("Prob"=y,row.names=x) 
plot(x = c,y = poisson,type = 'h',xlab = "Sequence Errors",ylab = "Probability")
