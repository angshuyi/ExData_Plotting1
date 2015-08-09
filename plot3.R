# ---------------------------------
#Load Data source
# ---------------------------------
source("Import_Data.R")

# ---------------------------------
# Set Canvas size
# ---------------------------------
png(file="plot3.png", width=480, height = 480)

# ---------------
# Plot Graph 3
# ---------------
plot(EPC_Data$Time,EPC_Data$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab ="Energy sub metering")

lines(EPC_Data$Time, EPC_Data$Sub_metering_2, col="red")
lines(EPC_Data$Time, EPC_Data$Sub_metering_3, col="blue")

# ---------------
# Add Legend
# ---------------
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)

# ---------------
# Save graph
# --------------
dev.off()