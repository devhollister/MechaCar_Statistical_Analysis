## read mpg csv
mpg_data <- read.csv('MechaCar_mpg.csv')
## add dbplyr library
library(dbplyr)

## perform multiple linear regression for Deliv 1
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data))

## read suspension coil csv
coil_data<- read.csv('Suspension_Coil.csv')
## add tidyverse library
library(tidyverse)
#create summary tables
total_summary <- summarize(coil_data, Mean=mean(coil_data$PSI), Median=median(coil_data$PSI), Variance=var(coil_data$PSI), SD=sd(coil_data$PSI))
lot_summary <- coil_data %>% group_by(coil_data$Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#perform t tests for Deliv 3
#all dataset t test
t.test(coil_data$PSI, mu=1500)
#create lot 1 subset and ttest
lot_1 <-subset(coil_data, coil_data$Manufacturing_Lot=="Lot1")
t.test(lot_1$PSI, mu=1500)
#lot 2
lot_2 <-subset(coil_data, coil_data$Manufacturing_Lot=="Lot2")
t.test(lot_2$PSI, mu=1500)
#lot 3
lot_3 <-subset(coil_data, coil_data$Manufacturing_Lot=="Lot3")
t.test(lot_3$PSI, mu=1500)

