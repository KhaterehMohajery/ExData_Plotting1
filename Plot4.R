Plot4 <- function(){
    library(dplyr)
    setwd('C:/Users/Khatere/Documents/R')
    df <- read.table("household_power_consumption.txt", sep = ";", skip=65000, nrows = 5000, stringsAsFactors = FALSE, col.names = colnames(read.table("household_power_consumption.txt", sep = ";", nrow = 1,  header = TRUE)))
    df <- filter(df, Date=="1/2/2007"| Date=="2/2/2007")
    df$time= strptime(paste(df$Date,df$Time), "%d/%m/%Y %H:%M:%S")
    png(filename = "Plot4.png")
    par(mfrow=c(2,2))
    par(mar= c(5.1,4.1,3.1,2.1))
    plot(df$time, df$Global_active_power,
         ylab = "Global Active Power ", xlab = "",
         type = 'l')
    plot(df$time, df$Voltage,
         ylab = "Voltage ", xlab = "datetime",
         type = 'l')
    plot(df$time, df$Sub_metering_1, type = "l",
         ylab = "Energy Sub metering", xlab = "",
          col = "black")
    lines(df$time, df$Sub_metering_2,type = 'l', col = "red")
    lines(df$time, df$Sub_metering_3,type = 'l', col = "blue")
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col= c("black", "blue", "red"), lty=c(1,1,1), bty ="n")
    plot(df$time, df$Global_reactive_power,
         ylab = "Global_reactive_power ", xlab = "datetime",
         type = 'l')
    dev.off()
}

Plot4()