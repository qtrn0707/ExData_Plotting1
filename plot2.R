source("get_data.R")



## Create plot2.png

plot(data$POSIX, data$Global_active_power, type="l", xlab="",
     ylab="Global Active Power (kilowatts)")

dev.copy(png, "plot2.png", width=480, height=480)
dev.off()