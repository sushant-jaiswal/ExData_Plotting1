
#Call get_and_clean_data.R to load the data
source("get_and_clean_data.R")

#Open PNG device
png(filename = "plot3.png", width = 480, height = 480, units = "px")

#Create the plot
plot(sourceData$Date_Time, sourceData$Sub_metering_1, col = "Black", type = "l", xlab = "", ylab = "Energy sub metering")

#Plot lines
lines(sourceData$Date_Time, sourceData$Sub_metering_2, col = "Red")
lines(sourceData$Date_Time, sourceData$Sub_metering_3, col = "Blue")

#Add legend
legend("topright", legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty = c(1, 1, 1))
	   
#Close the device
dev.off()
