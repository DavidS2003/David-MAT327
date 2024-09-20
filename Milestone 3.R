#Converting Crash Time values to whole numbers
Motor_Vehicle_Collisions_Crashes_20240904$Hour <- hour(hms(Motor_Vehicle_Collisions_Crashes_20240904$`CRASH TIME`))
#Creating the first chart ----------------------------------------
hist(Motor_Vehicle_Collisions_Crashes_20240904$Hour, main = "Motor Collisions Throughout the Day", xlab = "Hours", ylab = "Number of Collisions")
#Creating the second chart ----------------------------------------
#Filtering the data for collisions that occurred during 2023
filtered_data <- Motor_Vehicle_Collisions_Crashes_20240904[format(Motor_Vehicle_Collisions_Crashes_20240904$`CRASH DATE`, "%Y") == "2023", ]
#Creating Month column to distinguish between the months
filtered_data$Month <- format(filtered_data$`CRASH DATE`, "%B")
#Creating table for barplot function and creating the bar chart
crashes_by_month <- table(filtered_data$Month)
barplot(crashes_by_month, main = "Number of Crashes by Month (2023)", xlab = "Month", ylab = "Number of Crashes")
#Creating the third chart ----------------------------------------
barplot(table(filtered_data$BOROUGH), main  = "Collisions per Borough during 2023", ylab = "Number of Collisions", xlab = "Boroughs of NYC", cex.names = 0.8)
#Creating the fourth chart ----------------------------------------
vehicle_counts <- table(filtered_data$`VEHICLE TYPE CODE 1`)
#Creating a threshold to filter the amount of types of vehicles
threshold <- 500
filtered_vehicle_counts <- vehicle_counts[vehicle_counts > threshold]
#Creating the bar chart
barplot(filtered_vehicle_counts, main = "Collisions per Vehicle Types during 2023", ylab = "Number of Collisions", xlab = "Type of Vehicle", cex.names = 0.35)