data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
df = data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
df$Date2 <- paste(df$Date, df$Time, sep=" ")
df$Date3 <- strptime(df$Date2, format = "%d/%m/%Y %H:%M:%S")

png(file="plot2.png", bg="white")

plot(df$Date3, df$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.off()

