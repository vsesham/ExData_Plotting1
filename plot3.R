library(data.table)

setwd("/Users/vinaysesham/Documents/datasciencecoursera/ExploratoryDataAnalysis/explot_project1")
hpc <- read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
hpcSubset <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
hpcSubset$datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)
plot(hpcSubset$datetime,hpcSubset$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(hpcSubset$datetime,hpcSubset$Sub_metering_2,type="l",col="red")
lines(hpcSubset$datetime,hpcSubset$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
dev.off()