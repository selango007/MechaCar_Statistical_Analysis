library(dplyr) # for functions

readfile <- read.csv("MechaCar_mpg.csv")
df <- data.frame(readfile)
temp = lm(spoiler_angle ~ vehicle_weight,df) #create linear model
summary(lm(spoiler_angle~vehicle_weight,df)) #summarize linear model
yvals <- temp$coefficients['vehicle_weight']*df$vehicle_weight +
  temp$coefficients['(Intercept)']
plt <- ggplot(df,aes(x=vehicle_weight,y=spoiler_angle)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model


demo_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- demo_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create total summary table
lot_summary <- demo_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create lot summary table

                                          