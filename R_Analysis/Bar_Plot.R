plt <- ggplot(mpg,aes(x=class)) #import dataset into ggplot2
plt + geom_bar() #plot a bar plot

# Compare the number of vehicles from each manufacturer in the dataset, use dply's summarize() function to summarize the data, and ggplot2's geom_col() to visualize the results.
mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), .groups = 'keep') #create summary table
plt <- ggplot(mpg_summary,aes(x=manufacturer,y=Vehicle_Count)) #import dataset into ggplot2
plt + geom_col() #plot a bar plot

# To change the titles of the x-axis and y-axis, use the xlab() and ylab() functions. 
plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") #plot bar plot with labels

# To rotate the x-axis labels 45 degrees so they no longer overlap. Use a "+" sign at the end of the first line to indicate to the interpreter that the code continues onto the next line(Note: the CLI prompt character will change from ">" to "+" after the first line to indicate that it expects additional input).
plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") + #plot a boxplot with labels
theme(axis.text.x=element_text(angle=45,hjust=1)) #rotate the x-axis label 45 degrees



