
#Plot1 
fileName <- file("household_power_consumption.txt") 
# read the data for the required range 2007-02-01 and 2007-02-02
data1 <- read.table(text = grep("^[1,2]/2/2007", readLines(fileName), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
# Open PNG device
png(file = "Plot1.png", width = 480, height = 480, units = "px")
# creating Plot 1
hist(data1$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab="Frequency")