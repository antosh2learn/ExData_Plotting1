library(dplyr)
data_path <- "/mnt/hgfs/R_data/tmp/coursera_exploring_data/household_power_consumption.txt"
data <- read.table(data_path, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
plot2_data <- data %>% filter(Date %in% c("1/2/2007","2/2/2007"))
GlobalActivePower <- as.numeric(plot1_data$Global_active_power)
datetime <- strptime(paste(plot1_data$Date, plot1_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()