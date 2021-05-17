# We can use the 'geom_point()' plotting function combined with the cor() function to quantify the correlation between variables. 

# Let's look at the cor() documentation. Ex: '> ?cor()'

# To use the cor() function to perform a correlation analysis between two numeric variables. Use the two arguments, 'x' and 'y'

# To practice calculating the Pearson correlation coefficient, use the mtcars dataset. 
head(mtcars)

# Plot the two variables using the geom_point() function.
plt <- ggplot(mtcars,aes(x=hp,y=qsec)) #import dataset into ggplot2
plt + geom_point() #create scatter plot

# Use the cor() function to quantify the strength of the correlation between the two variables. 
cor(mtcars$hp,mtcars$qsec) #calculate correlation coefficient

# Reuse the used_cars dataset.
used_cars <- read.csv('used_car_data.csv',stringsAsFactors = F) #read in dataset
head(used_cars)

# Plot the two variables using the geom_point() function.
plt <- ggplot(used_cars,aes(x=Miles_Driven,y=Selling_Price)) #import dataset into ggplot2
plt + geom_point() #create a scatter plot

# Calculate the Pearson correlation coefficient using the cor() function.
cor(used_cars$Miles_Driven,used_cars$Selling_Price) #calculate correlation coefficient

# EX: To produce a correlation matrix for the used_cars dataset,first select the numeric columns from the data frame and convert it to matrix. Then provide the numeric matrix to the cor() function.
used_matrix <- as.matrix(used_cars[,c("Selling_Price","Present_Price","Miles_Driven")]) #convert data frame into numeric matrix
cor(used_matrix)


