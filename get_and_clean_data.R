
#Load packages
library(dplyr)

#Set working directory
filesPath <- "C:/Data/MyLearn/DataScienceCoursera/Files/ProgrammingAssignment5"
setwd(filesPath)

#Download .zip file
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="./household_power_consumption.zip",)

#Unzip the downloaded .zip file
unzip(zipfile="./household_power_consumption.zip",exdir=".")

#Read data to a data frame
sourceData <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

#Format column Date to type Date from Character
sourceData$Date <- as.Date(sourceData$Date, "%d/%m/%Y")

#Filter data to have only Date from 2007-02-01 to 2007-02-02
sourceData <- subset(sourceData,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

#Combine Date and Time columns
dateTime <- paste(sourceData$Date, sourceData$Time)

#Add combined Date and Time value to data frame
sourceData <- cbind(dateTime, sourceData)

#Remove separate Date and Time columns from data frame
sourceData <- sourceData[ ,!(names(sourceData) %in% c("Date","Time"))]

#Give approprieate name to the newly added column
colnames(sourceData)[which(names(sourceData) == "dateTime")] <- "Date_Time"

#Change the format of Date_Time column
sourceData$Date_Time <- as.POSIXct(dateTime)
