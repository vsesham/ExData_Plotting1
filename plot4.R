library(data.table)

setwd("/Users/vinaysesham/Documents/datasciencecoursera/ExploratoryDataAnalysis/explot_project1")
hpc <- read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
hpcSubset <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
hpcSubset$datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot4.png",width=480,height=480)
par(mfrow=c(2,2),mar=c(4,4,2,1),oma=c(0,0,2,0))
with(hpcSubset,{plot(datetime,Global_active_power,type="l",ylab="Global Active Power",xlab="")

plot(datetime,as.numeric(Voltage),type="l",ylab="Voltage",xlab="datetime")

plot(datetime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(datetime,Sub_metering_2,type="l",col="red")
lines(datetime,Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))

plot(datetime,as.numeric(Global_reactive_power),type="l",ylab="Global_reactive_power",xlab="datetime")
})

dev.off()