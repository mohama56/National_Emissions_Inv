setwd("C:/Users/hp/OneDrive/R Programming/National_Emissions_Inv")

NEI <- readRDS("summarySCC_PM25.rds")

# Aggregate total emissions by year
total_emissions <- aggregate(Emissions ~ year, data = NEI, sum)

# Create the plot
png("plot1.png")
plot(total_emissions$year, total_emissions$Emissions, type = "b", 
     main = "Total PM2.5 Emissions in the US (1999–2008)",
     xlab = "Year", ylab = "Total Emissions (tons)",
     pch = 19, col = "blue")
dev.off()
