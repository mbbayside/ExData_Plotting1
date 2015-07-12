
# load the household power consumption data 
source("read_hpc.R")

# plot 4
png( filename="plot4.png",
     width=480, height=480)

# create graphic
# set plot parameters to 2 by 2 grid
par( mfrow=c(2,2))   # build by row

# plot1 upper left
plot( tvec, hpc$Global_active_power, type="l",
ylab="Global Active Power (kilowatts)", xlab="")

# plot2 upper right
plot( tvec, hpc$Voltage, type="l",
ylab="Voltage", xlab="datetime")

# plot 3 lower left
plot( tvec, hpc$Sub_metering_1, type="l",
ylab="Energy sub metering", xlab="")
lines(tvec, hpc$Sub_metering_2, col="red")
lines(tvec, hpc$Sub_metering_3, col="blue")
# legend
legend( "topright",
legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
col=c("black", "red", "blue"), lty=c(1,1,1), bty="n" )

#plot4 lower right
with( hpc, plot( tvec, Global_reactive_power, type="l", xlab="datetime"))

dev.off()

