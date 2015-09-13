plot1 <- function(){

## Getting the data

mydata <- read.table(file="household_power_consumption.txt",col.names=c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = "NA",skip = 66637,nrows=2880,sep=";")

## Plotting plot1

png(filename = "ExData_Plotting1/plot1.png", width = 480, height = 480, units = "px")
par()
hist(mydata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
}