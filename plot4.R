png(filename = "plot4.png")

par(mfrow=c(2,2))

#Data file is already subsetted for speeding up reading
data <- read.csv("household_power_consumption.txt", sep=";")
datetime <- strptime (paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

plot(datetime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(datetime, data$Voltage, type="l", ylab="Voltage")

plot(wDays, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
points(wDays, data$Sub_metering_2, col="red", type="l")
points(wDays, data$Sub_metering_3, col="blue", type="l")
legend("topright", lwd=1, bty="n",  col=c("black", "red", "blue"), legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_1"))

plot(datetime, data$Global_reactive_power, type="l")

dev.off()