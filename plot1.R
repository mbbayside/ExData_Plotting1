
# load the household power consumption data if not already in environment
source("read_hpc.R")

# plot 1
png( filename="plot1.png",
     width=480, height=480)
# create the histogram
hist( hpc$Global_active_power, col="red",
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
# close device
dev.off()

