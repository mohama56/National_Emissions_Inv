# Subset data for Baltimore City
baltimore_data <- subset(NEI, fips == "24510")

# Aggregate emissions by year and source type
baltimore_emissions_type <- aggregate(Emissions ~ year + type, data = baltimore_data, sum)

# Load ggplot2
library(ggplot2)

# Create appealing line plot
plot3 <- ggplot(baltimore_emissions_type, aes(x = year, y = Emissions, color = type, group = type)) +
  geom_line(size = 1) +
  geom_point(size = 2) +
  labs(title = "PM2.5 Emissions by Source Type in Baltimore City (1999–2008)",
       x = "Year", y = "Total Emissions (tons)") +
  theme_minimal()

# Display the plot
print(plot3)

# Save the plot
ggsave("plot3.png", plot = plot3)
