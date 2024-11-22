# Filter coal-related SCC codes
coal_combustion <- SCC[grep("coal", SCC$Short.Name, ignore.case = TRUE), "SCC"]

# Subset NEI data for coal combustion
coal_data <- subset(NEI, SCC %in% coal_combustion)

# Aggregate emissions by year
coal_emissions <- aggregate(Emissions ~ year, data = coal_data, sum)

# Create the plot for coal emissions
plot4 <- ggplot(coal_emissions, aes(x = year, y = Emissions)) +
  geom_line(color = "brown", size = 1) + # Add a line for emissions
  geom_point(size = 3, color = "brown") + # Add points to indicate values
  labs(title = "PM2.5 Emissions from Coal Combustion Sources in the US (1999–2008)",
       x = "Year", y = "Total Emissions (tons)") + # Add labels
  theme_minimal() # Apply a minimal theme
print(plot4) # Display the plot

# Save the plot as a PNG file
ggsave("plot4.png", plot = plot4)
