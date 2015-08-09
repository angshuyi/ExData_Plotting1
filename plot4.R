# ---------------------------------
#Load Data source
# ---------------------------------
source("Import_Data.R")

# ---------------------------------
# Set Panel Plotting & Canvas size
# ---------------------------------
png(file="plot4.png", width=480, height = 480)
par(mfrow=c(2,2))

# ---------------------------------
# Plot Graph 4
# ---------------------------------
# Top Left Graph
# ---------------
plot(EPC_Data$Time, EPC_Data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")

# Top Right Graph
# ---------------
plot(EPC_Data$Time, EPC_Data$Voltage, 
     type="l",
     xlab="datetime", 
     ylab="Voltage")

# Bottom Left Graph
# -----------------
plot(EPC_Data$Time, EPC_Data$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(EPC_Data$Time, EPC_Data$Sub_metering_2, col="red")
lines(EPC_Data$Time, EPC_Data$Sub_metering_3, col="blue")

legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       box.lwd=0,
       bty = "n")

# Bottom Right Graph
# ------------------
plot(EPC_Data$Time, EPC_Data$Global_reactive_power, type="n",
     xlab="datetime", ylab="Global_reactive_power")
lines(EPC_Data$Time, EPC_Data$Global_reactive_power)

# ---------------
# Save graph
# --------------
dev.off()