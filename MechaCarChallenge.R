mpg_data <- read.csv('MechaCar_mpg.csv')
library(dbplyr)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data))
coil_data<- read.csv('Suspension_Coil.csv')
library(tidyverse)
total_summary <- summarize(coil_data, Mean=mean(coil_data$PSI), Median=median(coil_data$PSI), Variance=var(coil_data$PSI), SD=sd(coil_data$PSI))
lot_summary <- coil_data %>% group_by(coil_data$Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')