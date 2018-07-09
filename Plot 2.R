## Plot 2
plot(dataplot1$householdtime, dataplot1$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")

## Saving to file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()