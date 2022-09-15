# MechaCar Statistical Analysis
## Overview
We have been hired by Jeremy and his data analytics team to produce an in-depth statistical review of AutosRUs’ newest prototype, the MechaCar. The car is suffering from production troubles, which in return, is hindering the manufacturing team’s ability to progress with the R&D of the prototype. We will be investigating the production data provided to us by upper management to review, analyze, and provide our findings to the manufacturing team that can help them in the development process.

## Tools Used:
- R

## Dataset:
- 50 MechaCar Prototypes: MechaCar_mpg.csv
- Production Lot Results: Suspension_Coil.csv

## Objectives:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG
![multiple regression](images/summary_multiple_regression_deliv1.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
In the summary output provided above, each p-value represents the probability that each coefficient contributes to a random amount of variance in the multiple linear regression model. The variables that provide a non-random amount of variance to the MPG values in the dataset are vehicle length and ground clearance. According to results, vehicle length and ground clearance had p-values of 2.60 x 10^-12 and 5.21 x 10^-8 respectively. 

- Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model cannot be considered to have a value of zero. The p-value of the linear regression analysis is 5.35 x 10^-11, which is by far smaller than the assumed significance level of 0.05%. Therefore, we can consider that there is sufficient evidence to reject the null hypothesis. Meaning that the slop of the linear model is not zero. 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
While the model has shown that there is still unconsidered factors that are affecting the results, given that the r-squared produced, it does prove the argument that the linear model predicts MPG of MechaCar prototypes effectively. Essentially, what determines its effectiveness is the r-squared value. The r-squared value of 0.7149, therefore, model is approximately 71% accurate and sufficiently and predicts the dependent variable using the multiple linear regression model. 

## Summary Statistics on Suspension Coils
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![total summary table] (images/total_summary_suspension_coils.png)

The table above demonstrates the total summary of all of the manufacturing lots’ mean, median, variance, and standard deviation. Viewing the variance, which is 62.29356 pounds PSI, this proves that the current manufacturing data does meet the design specification in total as it does not exceed 100 pounds PSI. 

![per lot summary](images/lot_summary_suspension_coils.png)

As we use the summarize function again but break down each lots mean, median, variance, and standard deviation, they each paint a different picture individually. Both Lot1 and Lot2 meet the design specification as they both have a variance of the suspension coils to be far from exceeding 100 pounds PSI. However, Lot3 tells a difference story, in which its variance of the suspension coils does exceed the 100 pounds PSI limit. Lot3 contains a variance of 170.2861224, causing Lot3 no to meet the design specifications of the car prototype. 

## T-Tests on Suspension Coils

## Study Design: MechaCar vs. Competition



