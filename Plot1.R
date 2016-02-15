
library(data.table)

setwd("/Users/vinaysesham/Documents/datasciencecoursera/ExploratoryDataAnalysis/explot_project1")
hpc <- read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
hpcSubset <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot1.png",width=480, height=480)
hist(as.numeric(hpcSubset$Global_active_power),col="red",xlab="Global Active Power(kilowatts)",ylab="Frequency",main="Global Active Power")

dev.off()
