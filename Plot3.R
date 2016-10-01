Plot3 <- function(){
    library(dplyr)
    setwd('C:/Users/Khatere/Documents/R')
    df <- read.table("household_power_consumption.txt", sep = ";", skip=65000, nrows = 5000, stringsAsFactors = FALSE, col.names = colnames(read.table("household_power_consumption.txt", sep = ";", nrow = 1,  header = TRUE)))
    df <- filter(df, Date=="1/2/2007"| Date=="2/2/2007")
    df$time= strptime(paste(df$Date,df$Time), "%d/%m/%Y %H:%M:%S")
    png(filename = "Plot3.png")
    # par(mfrow=c(1,1))
    # par(mar= c(5.1,4.1,1.1,6.1))
    plot(5,5, type="n")
    plot(df$time, df$Sub_metering_1,
         ylab = "Energy Sub metering", xlab = "",
         type = 'l', col = "black")
    lines(df$time, df$Sub_metering_2,type = 'l', col = "red")
    lines(df$time, df$Sub_metering_3,type = 'l', col = "blue")
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col= c("black", "blue", "red"), lty=c(1,1,1))
    dev.off()
}

Plot3()