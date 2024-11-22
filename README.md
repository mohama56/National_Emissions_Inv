# National Emissions Inventory Analysis (PM2.5)

This project analyzes fine particulate matter (PM2.5) emissions in the United States from 1999 to 2008 using data from the Environmental Protection Agency's (EPA) National Emissions Inventory (NEI). The analysis explores trends, sources of emissions, and city-specific data using R programming.

## Project Structure

### Files and Folders
- **summarySCC_PM25.rds**: NEI dataset containing PM2.5 emissions data.
- **Source_Classification_Code.rds**: Dataset mapping SCC codes to emission source categories.
- **plot2.png** to **plot6.png**: Generated plots for Questions 2–6.
- **plot2.R** to **plot6.R**: R scripts for generating the plots.

### Plots Overview
1. **Plot 2**: Total PM2.5 emissions in Baltimore City from 1999 to 2008.
2. **Plot 3**: PM2.5 emissions by source type in Baltimore City from 1999 to 2008.
3. **Plot 4**: PM2.5 emissions from coal combustion-related sources in the US from 1999 to 2008.
4. **Plot 5**: PM2.5 emissions from motor vehicle sources in Baltimore City from 1999 to 2008.
5. **Plot 6**: Comparison of motor vehicle PM2.5 emissions in Baltimore City and Los Angeles County.

## Data Sources
The datasets used in this project were provided by the EPA:
- [National Emissions Inventory (NEI)](https://www.epa.gov/air-emissions-inventories).

## How to Run the Project

### Prerequisites
- Install R and RStudio.
- Install the `ggplot2` package in R:
  ```R
  install.packages("ggplot2")
