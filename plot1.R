hpc_data <- "household_power_consumption.txt"
data <- read.table(hpc_data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
hpc_subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

Global_Active_Power <- as.numeric(hpc_subset$Global_active_power)
png("plot1.png", width=480, height=480)
hist(Global_Active_Power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 