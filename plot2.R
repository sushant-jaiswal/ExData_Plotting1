
#Call get_and_clean_data.R to load the data
source("get_and_clean_data.R")

#Open PNG device
png(filename = "plot2.png", width = 480, height = 480, units = "px")

#Create the plot
plot(sourceData$Global_active_power ~ sourceData$Date_Time, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

#Close the device
dev.off()
