# overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007. 
# Task is to reconstruct the following plots below, all of which were constructed using the base plotting system.
# for the period 2007-02-01 and 2007-02-02 (yyyy-mm-dd)
# 
# Description: Measurements of electric power consumption in one household with a one-minute sampling rate over 
# a period of almost 4 years. Different electrical quantities and some sub-metering values are available.
# 
# The following descriptions of the 9 variables in the dataset are taken from the UCI web site:
# Date: Date in format dd/mm/yyyy
# Time: time in format hh:mm:ss
# Global_active_power: household global minute-averaged active power (in kilowatt)
# Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
# Voltage: minute-averaged voltage (in volt)
# Global_intensity: household global minute-averaged current intensity (in ampere)
# Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). 
#         It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
# Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). 
#         It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
# Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). 
#         It corresponds to an electric water-heater and an air-conditioner.
#####################################################################################################################
      library(data.table)
#set dir
        dir.create("Electric_power_consumption")
        setwd(paste0(getwd(),"/Electric_power_consumption/"))
##

# Download Dataset
      fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
      download.file(fileUrl,"householdpowerconsumption.zip")
      unzip("householdpowerconsumption.zip")
##
      dataDf <- read.table("household_power_consumption.txt", head=TRUE, sep=";")
      dataDf$Date <- as.Date(dataDf$Date,"%d/%m/%Y")
##
# subset and plot to png file directly
      subsetDf <- subset(dataDf,Date == "2007-02-01" | Date =="2007-02-02" )
      subsetDf$Datetime <- strptime(paste(subsetDf$Date,subsetDf$Time), "%Y-%m-%d %H:%M:%S")
##
      png("plot4.png",width = 480, height = 480)
      par(mfrow = c(2, 2))
      with(subsetDf, plot(Datetime,Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatt)"))
      with(subsetDf, plot(Datetime,Voltage, type="l", xlab="datetime", ylab = "Voltage"))
      with(subsetDf, plot(Datetime,Sub_metering_1, type="l", xlab="", ylab = "Energy sub metering"))
      with(subsetDf,points(Datetime, Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red"))
      with(subsetDf,points(Datetime, Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue"))
      legend("topright", lwd=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
      with(subsetDf, plot(Datetime,Global_reactive_power, type="l", xlab="datetime"))
      dev.off()