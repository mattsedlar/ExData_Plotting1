source("load_script.R")

png("plot3.png", width=480, height=480)

plot(data$Time, data$Sub_metering_1, col=2, type="l", xlab="", ylab="Energy sub metering")
## add sub_metering_2
lines(data$Time, data$Sub_metering_2, col=3)
## add sub_metering_3
lines(data$Time, data$Sub_metering_3, col=4)
## add legend
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), pch="_", col=2:4)

dev.off()