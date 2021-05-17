# In R, we can implement a one-sample t-test using the built-in stats package t.test()function.

# Let's look at the t.test() documentation in the Help pane. EX: '> ?t.test()'

# To use the t.test()function to perform our one-sample t-test, we have to use a few arguments:
#  * x
#  * mu
#  * alternative

# To test if the miles driven from the previous sample dataset is statistically different from the miles driven in the population data, use the t.test()function  
t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) #compare sample versus population means
