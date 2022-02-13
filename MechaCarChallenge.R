#load dplyr package
library(dplyr)

#Deliverable 1
#read csv to data frame
MC_mpg <- read.csv("resources/MechaCar_mpg.csv")

#create lm of mpg with all variables
MC_lm <- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MC_mpg)

#print summary statistics
summary(MC_lm)

# Deliverable 2
#read suspension coil csv to data frame
Sus_Coil<-read.csv("resources/Suspension_Coil.csv")

#create total summary df with summarize
total_summary <- Sus_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')

#create lot summary df with group_by
lot_summary <- Sus_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')

#Deliverable 3
#t.test of all lots and mean of 1500
t.test(Sus_Coil$PSI,mu=1500)

#t.test of each lot and mean of 1500
t.test(subset(Sus_Coil$PSI,Sus_Coil$Manufacturing_Lot=='Lot1'),mu=1500)
t.test(subset(Sus_Coil$PSI,Sus_Coil$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(Sus_Coil$PSI,Sus_Coil$Manufacturing_Lot=='Lot3'),mu=1500)
