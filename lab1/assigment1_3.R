#WAP in R to find the highest of three numbers using function
maximum=function(a,b,c)
    {
	    max=a;
	    if(b>max)
		    max=b;
	    if(c>max)
		    max=c;
	    return(max);
    }

#WAP in R to find display the sum of n natural numbers using loop using function
calculate_sum() <- function(n) {
if(n <= 1) {
return(n)
} else {
return(n + calculate_sum(n-1))
}
}
