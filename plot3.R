png(filename = "plot3.png")

#Data file is already subsetted for speeding up reading
data <- read.csv("household_power_consumption.txt", sep=";")
wDays <- strptime (paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

plot(wDays, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
points(wDays, data$Sub_metering_2, col="red", type="l")
points(wDays, data$Sub_metering_3, col="blue", type="l")
legend("topright", lwd=1,  col=c("black", "red", "blue"), legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_1"))

dev.off()