# ------------------------------
# Import Data into R
# ------------------------------
  EPC_Data <- read.table("household_power_consumption.txt", 
                       header = TRUE, 
                       sep=";", 
                       na="?")
  
  # Eliminate NA value and get dates 2007-02-01 and 2007-02-02
  EPC_Data <- subset(na.omit(EPC_Data), Date=="1/2/2007"|Date=="2/2/2007")
  
  #Format Date
  EPC_Data$Time <- strptime(paste(EPC_Data$Date, EPC_Data$Time), "%d/%m/%Y %H:%M:%S")
  EPC_Data$Date <- as.Date(EPC_Data$Date, "%d/%m/%Y")
  
  


