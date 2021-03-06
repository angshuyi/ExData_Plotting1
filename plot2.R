# ---------------------------------
#Load Data source
# ---------------------------------
source("Import_Data.R")

# ---------------------------------
# Set Canvas size
# ---------------------------------
png(file="plot2.png", width=480, height = 480)

# ---------------
# Plot Graph 2
# ---------------
plot(EPC_Data$Time, EPC_Data$Global_active_power, 
     type="l",
     xlab="",
     ylab="Global Active Power (Kilowatts)")

# ---------------
# Save graph
# --------------
dev.off()