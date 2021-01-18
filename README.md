# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

A multiple linear progression was performed to determine which aspects of vehicle design (vehicle lenght, vehicle weight, spoiler angle, ground clearance, and AWD), if any, can be used to predict miles per gallon. With an r-squared value of 0.7149, roughly 71.5% percent of mpg predictions made using this model will be correct. The slope of the linear model cannot be considered zero, as the p-value was shown to be 5.35e-11. As shown in the table below, vehicle length (p-value 2.60e-12) and ground clearance (p-value 5.21e-08) provide a non-random amount of variance to the mpg values recorded in the dataset. It can also be seen that the intercept is also statitistically significant (p-value 5.08e-08), indicating that there are other factors influencing mpg that are not included in this analysis. This and the lack of significant variables is evidence that the current model may suffer from overfitting, and simpler and more refined models may provide more accurate predictions of future data. 

![](deliv_1.png)

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The summary statistics for the PSI of suspension coils across all lots in the dataset is shown below. 

![](total_summary.png)

As seen above, the current manufacturing data meet the specification that the variance of the suspension coils must not exceed 100 pounds per square inch, as the variance was shown to be 62.29 psi. When broken down by lot however, it can be seen that while Lot 1 and Lot 2 suspension coils meet this criteria, suspension coils from Lot 3 far exceed the acceptable variance (170.29 psi). The summary statistics for PSI broken down by lot is shown below.

![](lot_summary.png)

## T-Tests on Suspension Coils

In your README, create a subheading ## T-Tests on Suspension Coils, then briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.


![](ttest.png) ![](ttest_lot1.png)

![](ttest_lot2.png) ![](ttest_lot3.png)

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
