## Plot 3
collines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(dataplot1$householdtime, dataplot1$Sub_metering_1, type="l", col=collines[1], xlab="", ylab="Energy sub metering")
lines(dataplot1$householdtime, dataplot1$Sub_metering_2, col=collines[2])
lines(dataplot1$householdtime, dataplot1$Sub_metering_3, col=collines[3])
legend("topright", legend=labels, col=collines, lty="solid")

## Saving to file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()