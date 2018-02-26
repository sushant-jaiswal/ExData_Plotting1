
#Call get_and_clean_data.R to load the data
source("get_and_clean_data.R")

#Open PNG device
png(filename = "plot1.png", width = 480, height = 480, units = "px")

#Create the Histogram plot
hist(sourceData$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")

#Close the device
dev.off()
