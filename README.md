# MechaCar_Statistical_Analysis

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.
In this challenge, you’ll help Jeremy and the data analytics team do the following:
Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
Run t-tests to determine if the manufacturing lots are statistically different from the mean population
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/105877888/188201369-507f4a2c-7e3b-43dc-aa48-14e6d34ef443.png)

- Acoording to the multiple linear regression summary output highlighted in yellow box, p-value(`Pr(>|t|)`) of **vehicle_length** `(2.60e-12)` and **ground_clearance**`(5.21e-08)` are less than significance level(0.05), which represents that vehicle_length and ground_clearance provided a non-random amount of variance to th **mpg** values in the dataset. In other words, *vehicle_length* and *ground_clearance* have significant impacts on *mpg*. 
- At the same time, p-value(`Pr(>|t|)`) of intercept(`5.08e-08`) is less than significance level(0.05) too. This statistically significant intercept indicates that this linear model does not predict mpg of MechaCar prototypes effectively. The significant feartures (vehicle_length and ground_clearance) may need scaling and transforming to help improve the predictive power of the model. There are other variables, which are not inclued in this model, can help explain the variability of the mpg values.


- Acoording to the multiple linear regression summary output highlighted in pink box, `p-value: 5.766e-06` is much smaller than assumned significance level of 0.05%. We can reject state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our liean model is not zero.

- Acoording to the multiple linear regression summary output highlighted in green box, `Multiple R-squared: 0.7419` means tht over 70% of the variability of **mpg** is explained using this linear model. Based on this result, we can consider that this linear model predicts mpg of MechaCar prototype effectively.


## Summary Statistics on Suspension Coils


The Suspension_Coil.csv file is imported and read into a dataframe (5 pt)
An RScript is written to create a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots (10 pt)
An RScript is written to create a lot summary dataframe that has the mean, median, variance, and standard deviation for each manufacturing lot (10 pt)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils

In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population (5 pt)
An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population (10 pt)

## Study Design: MechaCar vs Competition

two-sample t-test?
 If the success metric is numerical and the sample size is large, use a two-sample t-test.
 
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?


A metric to be tested is mentioned (5 pt)
A null hypothesis or an alternative hypothesis is described (5 pt)
A statistical test is described to test the hypothesis (5 pt)
The data for the statistical test is described (5 pt)
What data is needed to run the statistical test?
