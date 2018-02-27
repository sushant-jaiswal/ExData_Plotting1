
#Call get_and_clean_data.R to load the data
source("get_and_clean_data.R")

#Open PNG device
png(filename = "plot4.png", width = 480, height = 480, units = "px")

#Set the row numbers
par(mfrow = c(2,2))

#Create plot on top left
plot(sourceData$Date_Time, sourceData$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")

#Create plot on top right
plot(sourceData$Date_Time, sourceData$Voltage, xlab = "datetime", ylab = "Voltage" , type = "l")

#Create plot on bottom left
plot(sourceData$Date_Time, sourceData$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col = "Black")

#Plot lines
lines(sourceData$Date_Time, sourceData$Sub_metering_2, col = "Red")
lines(sourceData$Date_Time, sourceData$Sub_metering_3, col = "Blue")

#Add legend
legend("topright", legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty = c(1, 1, 1), bty = "n")
	   
#Create plot on bottom right
plot(sourceData$Date_Time, sourceData$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")

#Close the device
dev.off()
