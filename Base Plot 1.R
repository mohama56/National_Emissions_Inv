# Aggregate total PM2.5 emissions by year
total_emissions <- aggregate(Emissions ~ year, data = NEI, sum)

# Create the bar plot 
barplot(height = total_emissions$Emissions / 1000, # Scale emissions to thousands of tons
        names.arg = total_emissions$year,
        col = "skyblue", 
        border = "blue",
        main = "Total PM2.5 Emissions in the US (1999–2008)",
        xlab = "Year",
        ylab = "Total Emissions (in thousands of tons)")

# Save the bar plot as a PNG file
dev.copy(png, "plot1.png") # Copy the displayed plot to a PNG file
dev.off() # Close the PNG device
