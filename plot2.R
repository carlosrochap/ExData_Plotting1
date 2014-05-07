png(filename = "plot2.png")

#Data file is already subsetted for speeding up reading
data <- read.csv("household_power_consumption.txt", sep=";")
wDays <- strptime (paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

plot(wDays, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()