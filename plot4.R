data <- read.csv("household_power_consumption.txt", sep=";", na.strings=c("?"))
df = data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
df$Date2 <- paste(df$Date, df$Time, sep=" ")
df$Date3 <- strptime(df$Date2, format = "%d/%m/%Y %H:%M:%S")

par(mfrow=c(2,2))

# Plot 1
plot(df$Date4, df$Global_active_power, type="l", ylab="Global Active Power", xlab="")

# Plot 2
plot(df$Date4, df$Voltage, type="l", ylab="Voltage", xlab="datetime")

# Plot 3
plot(df$Date4, df$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(df$Date4, df$Sub_metering_2, type="l", col="red")
lines(df$Date4, df$Sub_metering_3, type="l", col="blue")

# Plot 4
plot(df$Date4, df$Global_reactive_power, type="l", ylab="Global Reactive Power", xlab="datetime")

dev.copy(png, file = "plot4.png")
dev.off()

