library dplyr
data_path <- "/mnt/hgfs/R_data/tmp/coursera_exploring_data/household_power_consumption.txt"
data <- read.table(data_path, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
plot1_data <- data %>% filter(Date %in% c("1/2/2007","2/2/2007"))
GlobalActivePower <- as.numeric(plot1_data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()