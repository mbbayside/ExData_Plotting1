
# load the household power consumption data
source("read_hpc.R")

# plot 3
png( filename="plot3.png",
     width=480, height=480)
# create graphic
plot( tvec, hpc$Sub_metering_1, type="l", 
      ylab="Energy sub metering", xlab="")
# add sub metering lines with desired color
lines(tvec, hpc$Sub_metering_2, col="red")
lines(tvec, hpc$Sub_metering_3, col="blue")
# legend
legend( "topright", 
        legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
        col=c("black", "red", "blue"), lty=c(1,1,1) )

# close device
dev.off()