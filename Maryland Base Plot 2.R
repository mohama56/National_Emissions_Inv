# Load data
NEI <- readRDS("summarySCC_PM25.rds")

# Subset data for Baltimore City (fips == "24510")
baltimore_data <- subset(NEI, fips == "24510")

# Aggregate total emissions by year for Baltimore City
baltimore_emissions <- aggregate(Emissions ~ year, data = baltimore_data, sum)

# Create the plot and display it
plot(baltimore_emissions$year, baltimore_emissions$Emissions, type = "b",
     main = "Total PM2.5 Emissions in Baltimore City (1999–2008)",
     xlab = "Year", ylab = "Total Emissions (tons)",
     pch = 19, col = "red")

# Save the current plot to a PNG file
dev.copy(png, "plot2.png")
dev.off()