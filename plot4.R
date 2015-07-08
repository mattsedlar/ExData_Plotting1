source("load_script.R")

## set graphical parameters to add a column and row
par(mfrow=c(2,2), mar=c(4,4,1,1))

## PLOT 1
plot(data$Time, data$Global_active_power,
     type="l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

## PLOT 2
plot(data$Time, data$Voltage,
     type="l",
     xlab = "datetime",
     ylab = "Voltage")

## PLOT 3
plot(data$Time, data$Sub_metering_1, col=2, type="l", xlab="", ylab="Energy sub metering")
## add sub_metering_2
lines(data$Time, data$Sub_metering_2, col=3)
## add sub_metering_3
lines(data$Time, data$Sub_metering_3, col=4)
## add legend
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), pch="_", col=2:4)

## PLOT 4
plot(data$Time, data$Global_reactive_power, 
     type="l",
     xlab = "datetime",
     ylab = "Global Reactive Power")

dev.copy(png,"plot4.png", width=480, height=480)
dev.off()
