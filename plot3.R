source("get_data.R")



## Create plot3.png

plot(data$POSIX, data$Sub_metering_1, type="l", xlab="",
     ylab="Energy sub metering")
lines(data$POSIX, data$Sub_metering_2, col="red")
lines(data$POSIX, data$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1), col=c("black", "red", "blue"))

dev.copy(png, "plot3.png", width=480, height=480)
dev.off()