# MechaCar Statistical Analysis
## Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles. To help the manufacturing team's progress, Jesremy was asked to implement a series of production data analyses. The anlyses include:
- Use multiple linear regression analysis to identify which variables in the dataset predict the **MPG** of MechaCar prototypes
- Use summary statistics to identify if there is any manufacturing lot has issues
- Use t-test to determine the statistical difference between the **PSI** mean of current manufacturing lots and the population
- Design a statistical study to compare the performance of MechaCar against vehicles from other manufacturers.  

## Linear Regression to Predict MPG[[Link](https://github.com/CelineWW/MechaCar_Statistical_Analysis/blob/main/Screenshots/Linear%20Regression%20to%20Predict%20MPG.png)]

![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/105877888/188210992-da1ad51c-7f3d-4f85-918b-763fab69bed8.png)

- Acoording to the multiple linear regression summary output highlighted in yellow box, p-value(`Pr(>|t|)`) of **Vehicle Length** `(2.60e-12***)` and **Ground Clearance**`(5.21e-08***)` are less than significance level(0.001%), which represents that **Vehicle Length** and **Ground Clearance** provided a non-random amount of variance to the **MPG** values in the dataset. In other words, **Vehicle Length** and **Ground Clearance** have significant impacts on **MPG**. 
- At the same time, p-value(`Pr(>|t|)`) of intercept(`5.08e-08***`) is lower than significance level(0.001%) too. The highly statistically significant intercept indicates that the significant feartures (**Vehicle Length** and **Ground Clearance**) may need scaling and transforming to help improve the predictive power of the model. There are other variables, which are not inclued in this model, can help explain the variability of the **MPG** values.

- Acoording to the multiple linear regression summary output highlighted in pink box, `p-value: 5.766e-06***` is much smaller than assumned significance level of 0.001%. We can state that there is very strong sufficient evidence to reject our null hypothesis, which means that the slope of our liean model is not zero.

- Acoording to the multiple linear regression summary output highlighted in green box, `Multiple R-squared: 0.7419` means that over 70% of the variability of **MPG** is explained using this linear model. Based on this result, we can consider that this linear model predicts **MPG** of MechaCar prototype effectively.


## Summary Statistics on Suspension Coils
### ➢Total Summary Dataframe[[Link](https://github.com/CelineWW/MechaCar_Statistical_Analysis/blob/main/Screenshots/total_summary%20dataframe.png)]

<img width="335" alt="total_summary dataframe" src="https://user-images.githubusercontent.com/105877888/188211703-2793c5d3-4734-4d2c-9362-7e8272018013.png">

- The total summary dataframe shows statistics of **The Pounds per Square Inch (PSI)** for all manufacturing lots. The variance of suspension coils does not exceed 100 pounds per square inch. Overall, the current manufacturing data meets this design specification.

### ➢Lot Summary Dataframe[[Link](https://github.com/CelineWW/MechaCar_Statistical_Analysis/blob/main/Screenshots/lot_summary%20dataframe.png)]

<img width="489" alt="lot_summary dataframe" src="https://user-images.githubusercontent.com/105877888/188211742-77b0fe66-a904-4121-a680-7f3bf79e1225.png">

- Lot summary dataframe shows statistics of **PSI** for each manufacturing lot. Among current 3 lots, the variance of the suspension of **Lot3** is over 170 pounds per square inch. Therefore, **Lot3** does not meet the design of specification. **Lot1** and **Lot2** are ready to go.


## T-Tests on Suspension Coils
### ➢T-Test on All Lots of Suspension Coils[[Link](https://github.com/CelineWW/MechaCar_Statistical_Analysis/blob/main/Screenshots/All%20lot%20t-test.png)]

<img width="709" alt="All lot t-test" src="https://user-images.githubusercontent.com/105877888/188211803-67a40306-252a-4715-abc0-a62ba31a18e7.png">

- As shown in T-Test result, the p-value of all lot of suspension coils is `0.06028`. Assuming significance level is 0.05%, p-value is above significance level, we do not have sufficient evidence to reject the null hypothesis. The mean of all lot of suspension coils(`1498.78`) is similiar to the mean PSI of the population mean(`1500` PSI).

### ➢T-Test on Each Lot of Suspension Coils[[Lot1](https://github.com/CelineWW/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot1%20t-test.png)][[Lot2](https://github.com/CelineWW/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot2%20t-test.png)][[Lot3](https://github.com/CelineWW/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot3%20t-test.png)]

<img width="656" alt="Lot1 t-test" src="https://user-images.githubusercontent.com/105877888/188211828-a1bf033f-0fc2-42b9-b515-122baa949120.png">

<img width="653" alt="Lot2 t-test" src="https://user-images.githubusercontent.com/105877888/188211844-33466754-afa1-42e3-b939-472f1dedf3e6.png">

<img width="653" alt="Lot3 t-test" src="https://user-images.githubusercontent.com/105877888/188211879-023d13da-d94e-4565-aac7-b10ed1e99abe.png">

- As shown in T-Test results, the p-values of each lot of suspension coils are as follows:
```
Lot1: p-value = 1, mean = 1500;
Lot2: p-value = 0.6072, mean = 1500.2;
Lot3: p-value = 0.04168, mean = 1496.14.
```
- The p-values of **Lot1** and **Lot2** are higher than significance level(0.05%), we do not have sufficient evidence to reject the null hypothesis. The means of **Lot1** and **Lot2** of suspension coils(`1500` PSI and `1500.2` PSI, respectively) are similiar to the population mean(`1500` PSI).
- The p-value of **Lot3** is lower than significance level(0.05%), we do have sufficient evidence to reject the null hypothesis. The means of **Lot3** of suspension coils(`1496.14` PSI) is statistically different from the population mean(`1500` PSI). 

## Study Design: MechaCar vs Competition
According to the report of [Retail Prices for Gasline in California](https://www.eia.gov/dnav/pet/hist/LeafHandler.ashx?n=pet&s=emm_epm0_pte_sca_dpg&f=m) from U.S. Energy Information Administration, from Aug, 2020 to Aug, 2022, all grades retail gasline price rised by 69%. There is no doubt that potential buyers will strongly concern about the **MPG(Miles per Gallon)** value of their new vehicle.

1.  What metric or metrics are you going to test?
  - **MPG(Miles per Gallon)** reflects both city and highway fuel efficiency. These are both common in California.We are going to test **MPG(Miles per Gallon)** which indicates the fuel economy of the vehicle. 
 
2.  What is the null hypothesis or alternative hypothesis?
  - H<sub>0</sub>(null hypothesis): If MechaCar has the same performance as the competition vehicle on fuel efficiency, the **MPG** mean of MechaCar will be similiar to the **MPG** mean of the competition.
H<sub>a</sub>(alternative hypothesis): If MechaCar has better or worse performance over the competition vehicle on fuel efficiency, the **MPG** mean of MechaCar will be statistically different from the **MPG** mean of the competition.

3.  What statistical test would you use to test the hypothesis? And why?
  - Since **MPG** is numeric data, and the sample size is large, we can perform a two-sample t-test.

4.  What data is needed to run the statistical test?
  - The **MPG** dataset of AutosRUs’ newest prototype, the MechaCar. These data is already on our hand.
  - The **MPG** dataset of the competition vehicles. These data needs to be further collected.

 
