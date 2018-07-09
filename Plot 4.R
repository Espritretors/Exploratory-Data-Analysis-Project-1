## Plot 4
collines <- c("black","red","blue")
labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
par(mfrow=c(2,2))
plot(dataplot1$householdtime, dataplot1$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power")
plot(dataplot1$householdtime, dataplot1$Voltage, type="l", col="black", xlab="datetime", ylab="Voltage")
plot(dataplot1$householdtime, dataplot1$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dataplot1$householdtime, dataplot1$Sub_metering_2, type="l", col="red")
lines(dataplot1$householdtime, dataplot1$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=collines)
plot(dataplot1$householdtime, dataplot1$Global_reactive_power, type="l", col="black", xlab="datetime", ylab="Global_reactive_power")

## Saving to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()