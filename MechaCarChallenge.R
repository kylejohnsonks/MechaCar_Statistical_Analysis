#load dplyr package
library(dplyr)

#read csv to data frame
MC_mpg <- read.csv("resources/MechaCar_mpg.csv")

#create lm of mpg with all variables
MC_lm <- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MC_mpg)

#print summary statistics
summary(MC_lm)

#read suspension coil csv to data frame
Sus_Coil<-read.csv("resources/Suspension_Coil.csv")

#create total summary df with summarize
total_summary <- Sus_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')

#create lot summary df with group_by
lot_summary <- Sus_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')
