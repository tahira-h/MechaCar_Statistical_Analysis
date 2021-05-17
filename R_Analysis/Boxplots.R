# To generate a boxplot, supply a vector of numeric values. Example: if we want to generate a boxplot to visualize the highway fuel efficiency of our mpg dataset. See code below.
plt <- ggplot(mpg,aes(y=hwy)) #import dataset into ggplot2
plt + geom_boxplot() #add boxplot

# Create a set of boxplots that compares highway fuel efficiency for each car manufacturer. 
plt <- ggplot(mpg,aes(x=manufacturer,y=hwy)) #import dataset into ggplot2
plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) #add boxplot and rotate x-axis labels 45 degrees

# To recreate the boxplots comparing the highway fuel efficiency across manufacturers, add data points using the 'geom_point() function.
plt <- ggplot(mpg,aes(x=manufacturer,y=hwy)) #import dataset into ggplot2
plt + geom_boxplot() + #add boxplot
theme(axis.text.x=element_text(angle=45,hjust=1)) + #rotate x-axis labels 45 degrees
geom_point() #overlay scatter plot on top

# The data argument can be used to provide a new input data structure, otherwise, the mapping function will reference the data structure provided in the ggplot object. 
mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_Engine=mean(displ), .groups = 'keep') #create summary table
plt <- ggplot(mpg_summary,aes(x=class,y=Mean_Engine)) #import dataset into ggplot2
plt + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size") #add scatter plot


# Compute the standard deviations in our dplyr summarizes() function, we can layer the upper and lower standard deviation boundaries toBibtex( our visualization. 
mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_Engine=mean(displ),SD_Engine=sd(displ), .groups = 'keep')
plt <- ggplot(mpg_summary,aes(x=class,y=Mean_Engine)) #import dataset into ggplot2
plt + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size") + #add scatter plot with labels
geom_errorbar(aes(ymin=Mean_Engine-SD_Engine,ymax=Mean_Engine+SD_Engine)) #overlay with error bars

# Faceting is performed by adding the facet() function to the end of the plotting statement. Consider, if instead of the wide format, our mpg dataset was obtained where city and highway fuel efficiency data was provided in a long format. 
mpg_long <- mpg %>% gather(key="MPG_Type",value="Rating",c(cty,hwy)) #convert to long format
head(mpg_long)

# To visualize the different vehicle fuel efficiency ratings by manufacturer.
plt <- ggplot(mpg_long,aes(x=manufacturer,y=Rating,color=MPG_Type)) #import dataset into ggplot2
plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) #add boxplot with labels rotated 45 degrees

# The produced boxplot is optimal for comparing the city versus highway fuel efficiency for each manufacturer, but it is more difficult to compare all of the city fuel efficiency across manufacturers. One solution would be to facet the different types of fuel efficiency within the visualization using the facet_wrap() function.
# Let's look at the 'facet_wrap() documentation in the Help pane. EX: '> ?facet_wrap()'

# The most basic use cases for faceting only require us to provide the annotation for the facets argument. The facets argument expects a list of grouping variables to facet by using the vars() function.
# To facet the previous example by the fuel-efficiency type, see code below.
plt <- ggplot(mpg_long,aes(x=manufacturer,y=Rating,color=MPG_Type)) #import dataset into ggplot2
plt + geom_boxplot() + facet_wrap(vars(MPG_Type)) + #create multiple boxplots, one for each MPG type
theme(axis.text.x=element_text(angle=45,hjust=1),legend.position = "none") + xlab("Manufacturer") #rotate x-axis labels

