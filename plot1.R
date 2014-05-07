png(filename = "plot1.png")

#Data file is already subsetted for speeding up reading
data <- read.csv("household_power_consumption.txt", sep=";")
hist(data$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")

dev.off()