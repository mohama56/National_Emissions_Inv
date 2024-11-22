# Load the .rds files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Inspect the data
str(NEI)
head(NEI)

str(SCC)
head(SCC)
