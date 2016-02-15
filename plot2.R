library(data.table)

setwd("/Users/vinaysesham/Documents/datasciencecoursera/ExploratoryDataAnalysis/explot_project1")
hpc <- read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
hpcSubset <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
hpcSubset$Global_active_power = as.numeric(hpcSubset$Global_active_power)
hpcSubset$datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)
plot(hpcSubset$datetime,hpcSubset$Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xlab="")

dev.off()


