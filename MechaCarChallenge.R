# Deliverable 1: Linear Regression to Predict MPG
library(dplyr)

# Import and read MechaCar_mpg.csv file as a dataframe.
mecha_car <-read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mecha_car)

# Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car))