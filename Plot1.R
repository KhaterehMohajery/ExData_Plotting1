Plot1 <- function(){
    library(dplyr)
    
    setwd('C:/Users/Khatere/Documents/R')
    # read.table("household_power_consumption.txt", skip=grep("2005-12-31", ,nrows= )
    
    df<-read.table("household_power_consumption.txt", sep = ";", skip=65000, nrows = 5000, stringsAsFactors = FALSE, col.names = colnames(read.table("household_power_consumption.txt", sep = ";", nrow = 1,  header = TRUE)))
    
    df<- filter(df, Date=="1/2/2007"| Date=="2/2/2007")
    
    png(filename = "Plot1.png")
    par(mfrow=c(1,1))
    par(mar= c(5.1,4.1,1.1,6.1))
    hist(df$Global_active_power, col= "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
    dev.off()
    # for (i in 65000:75000){
    #     tempdf<-read.table("household_power_consumption.txt", skip=(i-1), stringsAsFactors = FALSE)
    #     if (tempdf$Date=="1/2/2007" |tempdf$Date=="2/2/2007"){
    #        df<- rbind(df, tempdf) 
    #     }
    # }
    #df<- readLines("household_power_consumption.txt",n = i)
    
}
