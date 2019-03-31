plot1<- function(){

  
  ## read data
  powerdata <- read.table("./household_power_consumption.txt",header = TRUE, sep =";", na.strings="?", check.names=F, stringsAsFactors=F, comment.char="", quote='\"'   )

  powerdata$Date <- as.Date(powerdata$Date, format="%d/%m/%Y")  ##Date Conversion to another format 
  powerdata$Global_active_power <- as.numeric(powerdata$Global_active_power)  ## Changing required data to numeric form
  
  

  subsetdata <- subset(powerdata, Date == "2007-02-01" | Date =="2007-02-02")  ##Selecting the data required
  
  
  hist(subsetdata$Global_active_power, col="red", border="black", main ="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
  dev.copy(png,"plot1.png",width= 480 ,height = 480)      ##For the png
  dev.off()
}
