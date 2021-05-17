# Create a ggplot object for the line data. Set the categorical variable to the x value and the continuous variable to the y value within the aes() function. 
mpg_summary <- subset(mpg,manufacturer=="toyota") %>% group_by(cyl) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table
plt <- ggplot(mpg_summary,aes(x=cyl,y=Mean_Hwy)) #import dataset into ggplot2

# Generate the line plot.
plt + geom_line()

# Adjust the 'scale_x_discrete() and scale_y_continuous() functions.
#EX
# plt + geom_line() + scale_x_discrete(limits=c(4,6,8)) + scale_y_continuous(breaks = c(15:30)) #add line plot with labels

# Create a scatter plot to visualize the relationship between the size of each car engine (displ) versus their city fuel efficiency, create a 'ggplot' object.
plt <- ggplot(mpg,aes(x=displ,y=cty)) #import dataset into ggplot2

# Once completing the 'ggplot' object, generate the scatter plot using the geom_point() function.
plt + geom_point() + xlab("Engine Size (L)") + ylab("City Fuel-Efficiency (MPG)") #add scatter plot with labels

# Apply the custom aesthetics to the previous example (line 16). We can use scatter plots to visualize the relationship between city fuel efficiency and engine size, while grouping by additional variables of interes. 
plt <- ggplot(mpg,aes(x=displ,y=cty,color=class)) #import dataset into ggplot2
plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class") #add scatter plot with labels

# By coloring each data point by its vehicle class, we can see the vehicle class data points are clustering together in regard to the engine size and city fuel efficiency. NOTE: Not limited to only adding one aesthetic. 
plt <- ggplot(mpg,aes(x=displ,y=cty,color=class,shape=drv)) #import dataset into ggplot2
plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class",shape="Type of Drive") #add scatter plot with multiple aesthetics
