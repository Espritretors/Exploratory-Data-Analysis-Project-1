# File download. If file does not exist, download to working directory.
if(!file.exists("household_power_consumption.zip"))
{download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","household_power_consumption.zip", mode = "wb")}

# File unzip. If file does not exist in the directory, unzip.
if(!file.exists("household_power_consumption.txt"))
{unzip("household_power_consumption.zip", files = NULL, exdir=".")}

household <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")

## set time variable
householdfeb <- household[household$Date %in% c("1/2/2007","2/2/2007"),]
householdtime <-strptime(paste(householdfeb$Date, householdfeb$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
dataplot1 <- cbind(householdtime, householdfeb)


## Plot 1
hist(dataplot1$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

## Saving to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()