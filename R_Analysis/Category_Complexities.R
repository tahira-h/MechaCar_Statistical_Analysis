# Compute the chi-squared test using the 'chisq.test()' function. 

# Let's look at the chisq.test() documentation. Ex: type in ?chisq.test()

# NOTE: The most straightforward implementation of chisq.test() function is passing the function to a contingency table.

# A contingency table is another name for a frequency table produced using table() function.table() function does all the heavy lifting for us by calculating frequencies across factors. 

# Let's test whether there is a statistical difference in the distribution of vehicle class across 1999 and 2008 from the mpg dataset. 

# First build the contingency table.
table(mpg$class,mpg$year) #generate contingency table

# Then pass the contingency table to the chisq.test() function.
tbl <- table(mpg$class,mpg$year) #generate contingency table
chisq.test(tbl) #compare categorical distributions

