
### Question 1(a) ####
# loading the dataset in r
dataframe <- read.csv("E:\\Mtech\\Semister III\\Data Analyics\\Lab2\\Dataset.csv")
# to view the dataset
View(dataframe)


###  Question 1 (b)

# finding the missing value
is.na(dataframe)

# counting the missing value
# finding total number of missing values in our dataset
sum(is.na(dataframe))

# duplicate the data frame so that we can keep the original dataframe
data1 <- dataframe

# replace na values in a particular column with the mean of that column
data1$Age [ is.na(data1$Age)] <- mean(data1$Age, na.rm =  TRUE)
data1$Salary[is.na(data1$Salary)] <- mean(data1$Salary, na.rm = TRUE)
View(data1)

### Question 1(c)###
# encoding the categorical data
data1$Country = factor(data1$Country,
levels = c('France','Spain','Germany'),
labels = c(1,2,3))

# putting labels for the values in target column 
#  Yes = 0 and No = 1
data1$Purchased = factor(data1$Purchased, levels = c('Yes', 'No'), labels = c(0,1))
data1


### Question 1(d)
# scaling the dataset
# I used standard deviation formula for scaling
data2 <- data1
data2$Country <- as.numeric(as.factor(data2$Country))
data2$Purchased <- as.numeric(as.factor(data2$Purchased))

data2 <- scale(data2, center = TRUE, scale = TRUE)


