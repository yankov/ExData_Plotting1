data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
df = data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]

# Will write plot directly to png file, plot will not
# show up if you run this in R console, but you will see the png file.
png(file="plot1.png", bg="white")

hist(df$Global_active_power, col="red", bg="white", xlab="Global Active Power (kilowatts)", main="Global Active Power")

dev.off()
