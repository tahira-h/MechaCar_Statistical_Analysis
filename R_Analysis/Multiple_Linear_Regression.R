# To better predict the quarter-mile time (qsec) dependent variable, we can add other variables of interest such as fuel efficiency (mpg), engine size (disp), rear axle ratio (drat), vehicle weight (wt), and horsepower (hp) as independent variables to our multiple linear regression model.

# Multiple linear regression statement. 
lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars) #generate multiple linear regression model

# Obtain our statistical metrics using the 'summary()' function. 
summary(lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars)) #generate summary statistics



