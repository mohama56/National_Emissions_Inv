# Subset data for motor vehicle emissions in Baltimore and Los Angeles
comparison_data <- subset(NEI, (fips == "24510" | fips == "06037") & SCC %in% motor_vehicle)

# Add city labels to the dataset
comparison_data$city <- ifelse(comparison_data$fips == "24510", "Baltimore City", "Los Angeles County")

# Aggregate emissions by year and city
comparison_emissions <- aggregate(Emissions ~ year + city, data = comparison_data, sum)

# Create the comparison plot for motor vehicle emissions
plot6 <- ggplot(comparison_emissions, aes(x = year, y = Emissions, color = city, group = city)) +
  geom_line(size = 1) + # Add lines for each city
  geom_point(size = 2) + # Add points to indicate values
  labs(title = "PM2.5 Motor Vehicle Emissions in Baltimore City vs. Los Angeles County",
       x = "Year", y = "Total Emissions (tons)") + # Add labels
  theme_minimal() # Apply a minimal theme
print(plot6) # Display the plot

# Save the plot as a PNG file
ggsave("plot6.png", plot = plot6)
