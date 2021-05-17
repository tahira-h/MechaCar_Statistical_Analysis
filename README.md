### MechaCar_Statistical_Analysis

LINEAR REGRESSION TO PREDICT MPG

The variables/coefficients vehicle_length and ground_clearance provides a non-random variance to the mpg values in the dataset. These coefficients has a positive impact on the mpg on the MechaCar prototype, in contrast to the coefficients vehicle_weight, AWD, and spoiler_angle that provides a random variance and error to the mpg. Therefore, the linear model's slope is not zero. 

The slope of the linear model is not considered to be zero. The p-value of our linear regression analysis is 2.767 × 10^-06 or in scientific e notation, 2.767e-06, which is the total amount of 0.000002767. The total amount of 0.000002767 is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero. Image shown below.

Open the file containing Linear_Regression_Prediction.
![Linear_Regression_Prediction](/MechaCar_Statistical_Analysis/resources/Linear_Regression_Prediction.png)
Close the file.

This linear model does predict mpg of MechaCar prototypes effectively. According to the linear regression model, the r-squared value is 0.7085, this is roughly 70.85% of all mpg time predictions to be considered as correct when using the linear model. On average, 70.85% out of 100% is an accurate amount for the linear model to predict the mpg of MechaCar
prototypes effectively. 

SUMMARY STATISTICS ON SUSPENSION COILS

According to the total_summary, the variance of the suspension coils is 62.29356 or 62.29 per square inch (PSI). As shown in the image below, the variance does not exceed 100 PSI, which is the requirement for the design specifications for the MechaCar suspension coils.  

Open the file containing total_summary.
![total_summary](/MechaCar_Statistical_Analysis/resources/total_summary.png)
Close the file.		

According to the lot_summary, the variance of Lot 1 (0.98 PSI) and Lot 2 (7.47 PSI) meet the suspension coils requirement of not exceeding 100 PSI. In contrast, Lot 3 has a larger variance of 170.29 PSI. As shown in the image below, Lot 3 is negatively effecting the variance of the suspension coils to not exceed 100 pounds PSI per manufacturing lot . 
Open the file containing lot_summary.
![lot_summary](/MechaCar_Statistical_Analysis/resources/lot_summary.png)
Close the file.

T-TESTS ON SUSPENSION COILS

In this study, an R-Script is written to create a t-test() function to determine if the PSI across all manufacturing lots are statistically different from the population mean of 
1,500 PSI.

First, the t-test() function is created for a t-test to compare all manufacturing lots against the population mean 1,500 PSI as shown below. Lastly, a new t-test() function is created for three t-tests for manufacturing_lot 1, 2, and 3. All three t-tests compare all three lots against the population mean of 1,500 PSI.

Open the file containing t_test_population.
![t_test_population](/MechaCar_Statistical_Analysis/resources/t_test_population.png)
Close the file.
	
These results provides a summarized conclusion that Lot 1 has a mean of 1500, and a p-value of 1. There is not a difference between Lot 1's mean and the population mean of 1,500 PSI as shown in the image below.

Open the file containing lot_1_population.
![lot_1_population](/MechaCar_Statistical_Analysis/resources/lot_1_population.png)
Close the file.

Lot 2 has a mean of 1500.02, and a p-value of 0.6072 (0.61 PSI). There is not a difference between Lot 2's mean and the population mean of 1,500 PSI as shown in the image below.

Open the file containing lot_2_population.
![lot_2_population](/MechaCar_Statistical_Analysis/resources/lot_2_population.png)
Close the file.
	
In contrast, Lot 3 has a mean of 1496.14 which is lower than 1,500 PSI. The p-value is 0.04168(0.04 PSI), and lower than 0.05. There is not a difference between Lot 2's mean and the population mean as shown in the image below.  

Open the file containing lot_3_population.
![lot_3_population](/MechaCar_Statistical_Analysis/resources/lot_3_population.png)
Close the file.	

MechaCar VS COMPETITION

Four metrics of interest to a consumer that are going to be tested are: 

* Cost: Dependent Variable
* MPG(Miles Per Gallon) : Independent Variable
* Engine (Hybrid or Gasoline): Independent Variable 
* Safety Rating: Independent Variable

What is the null hypothesis or alternative hypothesis?
	
* Null Hypothesis (Ho): The MechaCar safety rating is incorrect based on the metrics of interest to a consumer. 

* Alternative Hypothesis (Ha): The MechaCar safety rating is correct based on the metrics of interest to a consumer. 

The statistical test used to test the hypothesis would be a one-sample t-test. This test will determine if the linear model predicts the safety rating of MechaCar prototypes effectively, and what is the difference between the MechaCar's engine in contrast to the competition. 

Data needed to run the statistical test is the t.test() function and its subset() argument to determine if MechaCar's engine is statistically different from the competition.
