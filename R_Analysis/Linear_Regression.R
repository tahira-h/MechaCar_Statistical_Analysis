# Build the linear models using the built-in 'lm()' documentation. Ex: Type "> ?lm()"

# The lm() function only requires to provide two arguments. 
# * formula
# * data

# Create a linear regression model.
lm(qsec ~ hp,mtcars) #create linear model

# To determine the p-value and r-squared value for a simple linear regression model, use the 'summary()' function. 
summary(lm(qsec~hp,mtcars)) #summarize linear model

# First calculate the data points to use for the line plot using the lm(qsec ~ hp,mtcars) coefficients. 
model <- lm(qsec ~ hp,mtcars) #create linear model
yvals <- model$coefficients['hp']*mtcars$hp +
model$coefficients['(Intercept)'] #determine y-axis values from linear model

# Next, calculate the line plot data points, we can plot the linear model over the scatter plot.
plt <- ggplot(mtcars,aes(x=hp,y=qsec)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model



