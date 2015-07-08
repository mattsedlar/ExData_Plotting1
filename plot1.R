source("load_script.R")

png("plot1.png")

with(data,hist(Global_active_power,
             col="red", 
             xlab="Global Active Power (kilowatts)",
             main="Global Active Power"))

dev.off()