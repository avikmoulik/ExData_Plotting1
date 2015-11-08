# Reading data;
dataFile <- "/home/avik/rfile/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subsetting Data;
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#Convert to numeric
globalActivePower <- as.numeric(subSetData$Global_active_power)

#plotting
png("/home/avik/rfile/plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()