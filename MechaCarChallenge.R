library(dplyr)
MechaCar <- read.csv("MechaCar_mpg.csv")#import MechaCar_mpg dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)# generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)) #generate summary statistics

Suspension_Coil <- read.csv("Suspension_Coil.csv")#import Suspension_Coil dataset
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))#create summary table with single column
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')#create summary table with multiple columns

t.test(Suspension_Coil$PSI,mu=1500)#compare PSI of all manufacture lots versus population mean

lot1 <- subset(Suspension_Coil, Manufacturing_Lot=='Lot1')#create subset table of Lot1
t.test(lot1$PSI,mu=1500)#compare PSI of Lot1 versus population mean.

lot2 <- subset(Suspension_Coil, Manufacturing_Lot=='Lot2')#create subset table of Lot2
t.test(lot2$PSI,mu=1500)#compare PSI of Lot2 versus population mean.

lot3 <- subset(Suspension_Coil, Manufacturing_Lot=='Lot3')#create subset table of Lot3
t.test(lot3$PSI,mu=1500)#compare PSI of Lot3 versus population mean.


