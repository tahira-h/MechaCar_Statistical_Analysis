# Let's generate the two data samples.
mpg_data <- read.csv('mpg_modified.csv') #import dataset
mpg_1999 <- mpg_data %>% filter(year==1999) #select only data points where the year is 1999
mpg_2008 <- mpg_data %>% filter(year==2008) #select only data points where the year is 2008

# Test the null hypothesis, that the overall difference is zero. NOTE: Use the t.test() function
t.test(mpg_1999$hwy,mpg_2008$hwy,paired = T) #compare the mean difference between two samples


