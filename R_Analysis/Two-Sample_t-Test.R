# Let's test whether the mean miles driven of two samples from our used car dataset are statistically different.
sample_table <- population_table %>% sample_n(50) #generate 50 randomly sampled data points
sample_table2 <- population_table %>% sample_n(50) #generate another 50 randomly sampled data points

# Because the samples should not contain bias, we would expect the null hypothesis to be true-the samples should not be statistically different. 

# Let's use the t.test() function.
t.test(log10(sample_table$Miles_Driven),log10(sample_table2$Miles_Driven)) #compare means of two samples
