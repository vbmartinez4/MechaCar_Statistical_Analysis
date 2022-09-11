# Download libraries.
library(dplyr)
library(tidyverse)

# Deliverable 1: Linear Regression to Predict MPG
# Import and read MechaCar_mpg.csv file as a dataframe.
mecha_car <-read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mecha_car)

# Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car))

# Deliverable 2: Create Visualizations for the Trip Analysis
# Import and reach Suspension_Coil.csv file as a dataframe. 
suspension_coil <-read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(suspension_coil)

# Create a total_summary dataframe to get the mean, median, variance, and standard deviation of the PSI column.
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep')

# Create a lot_summary dataframe to group each manufacturing lot by the mean, median, 
# variance, and standard deviation of the PSI column.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep')

# Deliverable 3: T-Tests on the Suspension Coils
# Use the t.test() to determine if the PSI across all manufacturing lots is statistically different
# from the population mean of 1,500 pounds per square inch. 
t.test((suspension_coil$PSI), mu= 1500)

# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot1")$PSI, mu= 1500)
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot2")$PSI, mu= 1500)
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot3")$PSI, mu= 1500)
