
# load and reduce the household power consumption data if not already in environment
if (!exists("hpc")) {
        # load the data and assign data classes
        message("loading data ...")
        hpc <- read.csv("exdata-data-household_power_consumption/household_power_consumption.txt", 
                        colClasses=c( rep("character", 2), rep("numeric", 7)),
                        sep=";", na.strings="?")
        # interpret the time
        tvec <- strptime( paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
        # assign the time bounds
        t_first <- strptime("2007-02-01", "%Y-%m-%d")
        t_last <- strptime("2007-02-03", "%Y-%m-%d")
        # keep samples within specified limits
        toKeep = which( tvec>=t_first & tvec<t_last)
        hpc <- hpc[ toKeep ,]
        tvec <- tvec[ toKeep ]
        message("data loaded")
}   
