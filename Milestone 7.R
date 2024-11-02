#Calculating 95% CI for "Number of Motorist Killed" Column
  n <- sum(!is.na(filtered_data$`NUMBER OF MOTORIST KILLED`)) # 96594
  mean <- mean(filtered_data$`NUMBER OF MOTORIST KILLED`) # 0.001314781
  sd <- sd(filtered_data$`NUMBER OF MOTORIST KILLED`) # 0.03898873
  t <- -qt(.025, n-1) # 1.959989
  mean - t*sd/sqrt(n) # Lower Bound = 0.001068905
  mean + t*sd/sqrt(n) # Upper Bound = 0.001560658
  
#Calculating 95% CI for "Number of Motorist Injured" Column
  n <- sum(!is.na(filtered_data$`NUMBER OF MOTORIST INJURED`)) # 96594
  mean <- mean(filtered_data$`NUMBER OF MOTORIST INJURED`) # 0.38902
  sd <- sd(filtered_data$`NUMBER OF MOTORIST INJURED`) # 0.8439762
  t <- -qt(.025, n-1) # 1.959989
  mean - t*sd/sqrt(n) # Lower Bound = 0.3836976
  mean + t*sd/sqrt(n) # Upper Bound = 0.3943424