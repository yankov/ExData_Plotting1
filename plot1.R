data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
df = data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]

hist(df$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

dev.copy(png, file = "plot1.png")
dev.off()
