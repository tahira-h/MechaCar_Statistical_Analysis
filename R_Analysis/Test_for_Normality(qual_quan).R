# The qualitative test for normality is a visual assessment of the distribution of data, which looks for the characteristic bell curve shape across the distribution. In R, we would use ggplot2 to plot the distribution using the geom_density() function.

# Test the distribution of vehicle weights from the built-in mtcars dataset.
ggplot(mtcars,aes(x=wt)) + geom_density() #visualize distribution using density plot

# Use the built-in stats library to perform our quantitative test with the shapiro.test() function.

# Let's look at the shapiro.test() Ex: ">?shapiro.test()"

# Perform a quantitative Shapiro-Wilk test on the previous example.
shapiro.test(mtcars$wt)
