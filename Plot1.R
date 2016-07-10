## Plot 1 of 6
## Total Emissions of PM2.5 from 1999 to 2008

setwd('./R')
url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip'
download.file(url, destfile='./raw.zip')
unzip("raw.zip", exdir = ".")
NEI <- readRDS('summarySCC_PM25.rds')
SCC <- readRDS("Source_Classification_Code.rds")


yearly <- with(NEI, aggregate(Emissions, by = list(year), sum))
plot(yearly, type = "o", main = "Total PM2.5 Emissions", xlab = "Year", 
     ylab = "PM2.5", pch = 1, col = "orange")
dev.copy(png,file="plot1.png")
dev.off
