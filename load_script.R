library(data.table)

## grab classes for faster loading
data <- fread("data/household_power_consumption.txt", nrows = 5)
classes <- sapply(data,class)

## data.table hangs up on na.strings, converting cols to char, so I'm switching to read.table here.
data <- read.table("data/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", colClasses = classes)
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

## subset for dates
data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")