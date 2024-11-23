# Subset data for Baltimore City
baltimore_data <- subset(NEI, fips == "24510")

# Aggregate emissions by year and source type
baltimore_emissions_type <- aggregate(Emissions ~ year + type, data = baltimore_data, sum)

# Load ggplot2 package
library(ggplot2)

# Create the faceted bar plot
plot2 <- ggplot(baltimore_emissions_type, aes(x = factor(year), y = Emissions, fill = type)) +
  geom_bar(stat = "identity", position = "dodge") + # Create grouped bar plot
  facet_wrap(~ type, scales = "free_y") + # Create separate panels for each type
  labs(title = "PM2.5 Emissions, Baltimore City (1999–2008) by Source Type",
       x = "Year", y = "Total PM2.5 Emission (Tons)") +
  theme_minimal() + # Use a minimal theme
  scale_fill_manual(values = c("red", "green", "blue", "purple")) # Custom colors for source types

# Display the plot 
print(plot2)

# Save the plot as a PNG file
ggsave("plot2.png", plot = plot2, width = 8, height = 6)