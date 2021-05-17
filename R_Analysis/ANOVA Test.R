# Use the aov() function to perform both the one-way and two way ANOVA test. Let's look at the aov() documentation. Ex: '> ?aov()'

# To perform an ANOVA test, provide the aov() function two arguments:
# *formula
# * data

# NOTE: 
# "hp" column is for horsepower (dependent)
# "cyl" column is number of cylinders (independent)

# In the mtcars dataset, the 'cyl' is considered a numerical interval vector. Therefore, let's clean ourdata before beginning. 
mtcars_filt <- mtcars[,c("hp","cyl")] #filter columns from mtcars dataset
mtcars_filt$cyl <- factor(mtcars_filt$cyl) #convert numeric column to factor

# Now that the dataset is clean, let's use the aov() function. 
aov(hp ~ cyl,data=mtcars_filt) #compare means across multiple levels

# To retrieve the p-values, wrap the aov() function in a summary() function.
summary(aov(hp ~ cyl,data=mtcars_filt))



