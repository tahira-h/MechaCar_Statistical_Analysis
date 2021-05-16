### MechaCar_Statistical_Analysis

LINEAR REGRESSION TO PREDICT MPG

The variables/coefficients vehicle_length and ground_clearance provides a non-random variance to the mpg values in the dataset. These coefficients has a positive impact on the mpg on the MechaCar prototype, in contrast to the coefficients vehicle_weight, AWD, and spoiler_angle that provides a random variance and error to the mpg. Therefore, the linear model's slope is not zero. 

The slope of the linear model is not considered to be zero. The p-value of our linear regression analysis is 2.767 × 10^-06 or in scientific e notation, 2.767e-06, which is the total amount of 0.000002767. The total amount of 0.000002767 is much smaller than our assumed signigicance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero. Image shown below.

  --IMAGE HERE--

This linear model does predict mpg of MechaCar prototypes effectively. According to the linear regression model, the r-squared value is 0.7085, this is roughly 70.85% of all mpg time predictions to be considered as correct when using the linear model. On average, 70.85% out of 100% is an accurate amount for the linear model to predict the mpg of MechaCar
prototypes effectively. 

SUMMARY STATISTICS ON SUSPENSION COILS

According to the total_summary, the variance of the suspension coils is 62.29356 or 62.29 per square inch (PSI). As shown in the image below, the variance does not exceed 100 PSI, which is the requirement for the design specifications for the MechaCar suspension coils.  

	-- IMAGE HERE --		

According to the lot_summary, the variance of Lot 1 (0.98 PSI) and Lot 2 (7.47 PSI) meet the suspension coils requirement of not exceeding 100 PSI. In contrast, Lot 3 has a larger variance of 170.29 PSI. As shown in the image below, Lot 3 is negatively effecting the variance of the suspension coils to not exceed 100 pounds PSI per manufacturing lot . 

	-- IMAGE HERE --








