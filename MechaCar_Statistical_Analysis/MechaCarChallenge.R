# D1

# 3. Use the library() function to load the dplyr package.
library(jsonlite)
library(tidyverse)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg_tabl <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# 5. Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
# NOTE: begin with mpg ~ 5 after. 

# Ex: lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars) #generate multiple linear regression model
MechaCar_mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg_tabl) #generate multiple linear regression model

MechaCar_mpg_lm

# 6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(MechaCar_mpg_lm)  #generate summary statistics

# D2

# 2. In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# 3. Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.

# Ex: summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep') #create summary table with multiple columns
total_summary <- Suspension_Coil_table %>% 
  summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI), Variance_PSI=var(PSI), Std_PSI=sd(PSI), Num_Rows=n(), .groups = 'keep') #create summary table with multiple columns

total_summary

View(Suspension_Coil_table)

# 4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.
lot_summary <- Suspension_Coil_table %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI), Variance_PSI=var(PSI), Std_PSI=sd(PSI), Num_Rows=n(), .groups = 'keep') #create summary table with multiple columns

lot_summary

# D3

# 1. In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

# * arguments: x, mu, alternative
# * arguments: data,

t.test(subset(Suspension_Coil_table, Manufacturing_Lot =="Lot1")$PSI, 
        mu=1500)

# 2. Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
# NOTE: Use ?t.test() in the console to determine what arguments are needed to test against the PSI column across all manufacturing lots and for each lot.

t.test(subset(Suspension_Coil_table, Manufacturing_Lot =="Lot1")$PSI, 
       mu=1500)
t.test(subset(Suspension_Coil_table, Manufacturing_Lot =="Lot2")$PSI, 
       mu=1500)
t.test(subset(Suspension_Coil_table, Manufacturing_Lot =="Lot3")$PSI, 
       mu=1500)
