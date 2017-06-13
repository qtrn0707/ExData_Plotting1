source("get_data.R")



## Create plot4.png

# Partition the plotting screen into 4 parts (2x2), filled by columns
par(mfcol=c(2,2))

# First plot
plot(data$POSIX, data$Global_active_power, type="l", xlab="",
     ylab="Global Active Power (kilowatts)")

# Second plot
plot(data$POSIX, data$Sub_metering_1, type="l", xlab="",
     ylab="Energy sub metering")
lines(data$POSIX, data$Sub_metering_2, col="red")
lines(data$POSIX, data$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1), col=c("black", "red", "blue"), cex=0.35)

# Third plot
plot(data$POSIX, data$Voltage, type="l", xlab="datetime",
     ylab="Voltage")

# Fourth plot
plot(data$POSIX, data$Global_reactive_power, type="l", xlab="datetime",
     ylab="Global_reactive_power")

dev.copy(png, "plot4.png", width=480, height=480)
dev.off()


# Reset the plotting screen partition
par(mfrow=c(1,1))