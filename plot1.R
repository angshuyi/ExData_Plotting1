# ---------------------------------
#Load Data source
# ---------------------------------
source("Import_Data.R")

# ---------------------------------
# Set Canvas size
# ---------------------------------
png(file="plot1.png", width=480, height = 480)

# ---------------
# Plot Graph 1
# ---------------
hist(EPC_Data$Global_active_power, 
     main = "Global Active Power",
     xlab = "Global Active Power (Kilowatts)",
     ylab = "Frequency",
     col = "red")

# ---------------
# Save graph
# ---------------
dev.off()