
#WAP in R to find the sum of n natural numbers without formula.
num = as.integer(readline(prompt="Enter a number:"))
if(num < 0){
   print("Enter a positive number:")
}
else{
  sum = 0
  #use while loop to iterate untill 0
  while(num > 0){
    sum = sum + num
    num = num - 1
  }
  print(paste("The sum is", sum))
}
