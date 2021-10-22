library(dplyr) # for functions

readfile <- read.csv("MechaCar_mpg.csv")
df <- data.frame(readfile)
lm(spoiler_angle ~ vehicle_weight,df) #create linear model
summary(lm(qsec~hp,mtcars)) #summarize linear model
