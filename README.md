# MechaCar_Statistical_Analysis

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.
In this challenge, you’ll help Jeremy and the data analytics team do the following:
Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
Run t-tests to determine if the manufacturing lots are statistically different from the mean population
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/105877888/188210992-da1ad51c-7f3d-4f85-918b-763fab69bed8.png)


- Acoording to the multiple linear regression summary output highlighted in yellow box, p-value(`Pr(>|t|)`) of **Vehicle Length** `(2.60e-12)` and **Ground Clearance**`(5.21e-08)` are less than significance level(0.05), which represents that vehicle_length and ground_clearance provided a non-random amount of variance to thE **MPG** values in the dataset. In other words, **Vehicle Length** and **Ground Clearance** have significant impacts on **MPG**. 
- At the same time, p-value(`Pr(>|t|)`) of intercept(`5.08e-08`) is less than significance level(0.05) too. This statistically significant intercept indicates that this linear model does not predict **MPG** of MechaCar prototypes effectively. The significant feartures (**Vehicle Length** and **Ground Clearance**) may need scaling and transforming to help improve the predictive power of the model. There are other variables, which are not inclued in this model, can help explain the variability of the **MPG** values.


- Acoording to the multiple linear regression summary output highlighted in pink box, `p-value: 5.766e-06` is much smaller than assumned significance level of 0.05%. We can reject state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our liean model is not zero.

- Acoording to the multiple linear regression summary output highlighted in green box, `Multiple R-squared: 0.7419` means tht over 70% of the variability of **MPG** is explained using this linear model. Based on this result, we can consider that this linear model predicts **MPG** of MechaCar prototype effectively.


## Summary Statistics on Suspension Coils
### Total Summary Dataframe

<img width="335" alt="total_summary dataframe" src="https://user-images.githubusercontent.com/105877888/188211703-2793c5d3-4734-4d2c-9362-7e8272018013.png">

The total summary dataframe shows statistics of **The Pounds per Square Inch (PSI)** for all manufacturing lots. The variance of suspension coils does not exceed 100 pounds per square inch. Overall, the current manufacturing data meets this design specification.

### Lot Summary Dataframe

<img width="489" alt="lot_summary dataframe" src="https://user-images.githubusercontent.com/105877888/188211742-77b0fe66-a904-4121-a680-7f3bf79e1225.png">

Lot summary dataframe shows statistics of **PSI** for each manufacturing lot. Among current 3 lots, the variance of the suspension of **Lot3** is over 170 pounds per square inch. Therefore, **Lot3** does not meet the design of specification. **Lot1** and **Lot2** are ready to go.


## T-Tests on Suspension Coils

<img width="709" alt="All lot t-test" src="https://user-images.githubusercontent.com/105877888/188211803-67a40306-252a-4715-abc0-a62ba31a18e7.png">



In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

<img width="656" alt="Lot1 t-test" src="https://user-images.githubusercontent.com/105877888/188211828-a1bf033f-0fc2-42b9-b515-122baa949120.png">

<img width="653" alt="Lot2 t-test" src="https://user-images.githubusercontent.com/105877888/188211844-33466754-afa1-42e3-b939-472f1dedf3e6.png">

<img width="653" alt="Lot3 t-test" src="https://user-images.githubusercontent.com/105877888/188211879-023d13da-d94e-4565-aac7-b10ed1e99abe.png">

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
