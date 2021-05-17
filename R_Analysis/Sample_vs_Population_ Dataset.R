# When selecting sample data from a numerical vector, we should use the built-in sample() function. However, in most cases we will want to use the sample_n() function to select sample data from a two-dimensional data object.

# Let's look at the sample_n() documentation in the Help pane. 

# To visualize the distribution of driven miles for our entire population dataset, we use the geom_density()function from ggplot2
population_table <- read.csv('used_car_data.csv',check.names = F,stringsAsFactors = F) #import used car dataset
plt <- ggplot(population_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot

# Create a sample dataset using sample_n() function.
sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
plt <- ggplot(sample_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot






