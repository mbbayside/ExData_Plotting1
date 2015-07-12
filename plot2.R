
# load the household power consumption data
source("read_hpc.R")

# plot 2
png( filename="plot2.png",
     width=480, height=480)
# create the line plot with labels
plot( tvec, hpc$Global_active_power, type="l", 
      ylab="Global Active Power (kilowatts)", xlab="")
# close the device
dev.off()



