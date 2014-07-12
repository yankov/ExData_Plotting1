data <- read.csv("household_power_consumption.txt", sep=";", na.strings=c("?"))
df = data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
df$Date2 <- paste(df$Date, df$Time, sep=" ")
df$Date3 <- strptime(df$Date2, format = "%d/%m/%Y %H:%M:%S")

plot(df$Date3, df$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(df$Date3, df$Sub_metering_2, type="l", col="red")
lines(df$Date3, df$Sub_metering_3, type="l", col="blue")

dev.copy(png, file = "plot3.png")
dev.off()

