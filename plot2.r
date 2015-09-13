plot2 <- function(){

## Getting the data

mydata <- read.table(file="household_power_consumption.txt",col.names=c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = "?",skip = 66637,nrows=2880,sep=";")

## Converting Date and Time columns to class date time and adding column

mydata$datetime <- strptime(paste(mydata$Date,mydata$Time), format = "%d/%m/%Y %H:%M:%S")

## Installing lubridate package

require(lubridate)

## Plotting plot2

png(filename = "ExData_Plotting1/plot2.png", width = 480, height = 480, units = "px")
plot(x = mydata$datetime, y = mydata$Global_active_power, type = "l",ylab = "Global Active Power (kilowatts)",xlab="")
}