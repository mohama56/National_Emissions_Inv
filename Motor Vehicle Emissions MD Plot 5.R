# Filter motor vehicle SCC codes
motor_vehicle <- SCC[grep("vehicle", SCC$Short.Name, ignore.case = TRUE), "SCC"]

# Subset Baltimore City data for motor vehicle emissions
baltimore_vehicle_data <- subset(NEI, fips == "24510" & SCC %in% motor_vehicle)

# Aggregate motor vehicle emissions by year
baltimore_vehicle_emissions <- aggregate(Emissions ~ year, data = baltimore_vehicle_data, sum)

# Create the plot for motor vehicle emissions
plot5 <- ggplot(baltimore_vehicle_emissions, aes(x = year, y = Emissions)) +
  geom_line(color = "blue", size = 1) + # Add a line for emissions
  geom_point(size = 3, color = "blue") + # Add points to indicate values
  labs(title = "PM2.5 Emissions from Motor Vehicle Sources in Baltimore City (1999–2008)",
       x = "Year", y = "Total Emissions (tons)") + # Add labels
  theme_minimal() # Apply a minimal theme
print(plot5) # Display the plot

# Save the plot as a PNG file
ggsave("plot5.png", plot = plot5)
