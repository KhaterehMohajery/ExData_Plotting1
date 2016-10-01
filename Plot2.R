Plot2 <- function(){
    library(dplyr)
    setwd('C:/Users/Khatere/Documents/R')
    df <- read.table("household_power_consumption.txt", sep = ";", skip=65000, nrows = 5000, stringsAsFactors = FALSE, col.names = colnames(read.table("household_power_consumption.txt", sep = ";", nrow = 1,  header = TRUE)))
    df <- filter(df, Date=="1/2/2007"| Date=="2/2/2007")
    df$time= strptime(paste(df$Date,df$Time), "%d/%m/%Y %H:%M:%S")
    png(filename = "Plot2.png")
    par(mfrow=c(1,1))
    par(mar= c(5.1,4.1,1.1,6.1))
     plot(df$time, df$Global_active_power,
          ylab = "Global Active Power (kilowatts)", xlab = "",
          type = 'l')
    dev.off()
    
}

Plot2()