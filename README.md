# MechaCar Statistical Analysis
# Overview

## Results
### Linear Regression to Predict MPG
<img src="resources/MC_lm_summary.png"/><br>
- The intercept, vechicle length and ground clearance provide the most non-random variation of all the variables.
- The slope of the linear model is not considered to be zero as the r-squared value is .7149 and the p-value is extremely small.
- This model effectively, although not perfectly, predicts the mpg of MechaCar prototypes becuase teh r0squared value is .7149, meaning 71% of the variation is explained by the model.


### Summary Statistics on Suspension Coils
Total Summary<br>
<img src="resources/Total_sum.png" /> <br>
Lot Summary<br>
<img src="resources/Lot_sum.png" /> <br>
As these tables show, in total the lots comprising our data meet the specification requiring less 100 lbs variation in PSI.  When considered the lots individually, however, Lot3 shows a large variance which exceeds the maximum allowable variation.

### T-Test on Suspension Coils
The t.test performed on all lots shows a variation from the specified value of 1500 PSI with a p-value of .06.  This is not quite significant enough to meet the common .05 threshold.  Subsetting the data for each manufacturing lot revels differences.  Both Lot1 and Lot2 and close to the mean and any variation is likely to be random p-value = 1 and .60 respectively).  However, Lot3 shows a larger deviation and a p-value of .04 which is significant and is likely not random.

## Study Design: MechaCar vs Competition
The ongoing cost of maintenance is large and increasingly appreciated factor in the total ownership cost of a vechicle.  Our hypothesis is the superior design elements and secret alien technology in the MechaCar should lead to 20% or greater savings in annual maintenance expenses when compared to similar models from other brands.  The null hypothesis being that there is no difference in maintenance costs between brands.  To test this hypothesis, we will need data containing a column for type of vehicle and the annual maintenence expense.  Rows should be populated with individual vechiles and their actual details.  
