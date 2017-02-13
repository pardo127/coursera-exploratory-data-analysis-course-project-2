

> require(downloader)
> dataset_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
> download(dataset_url, dest = "data.zip", mode = "wb")
> unzip("data.zip", exdir = "./")
> NEI <- readRDS("summarySCC_PM25.rds")
> SCC <- readRDS("Source_Classification_Code.rds")
> subdata <- subset(NEI, fips == "24510")
> baltimore <- tapply(subdata$Emissions, subdata$year, sum)
> png("Plot2.png")
> plot(baltimore, type = "o", main = "Total PM2.5 Emissions in Baltimore County", xlab = "Year", ylab = "PM2.5 Emissions", pch = 18, col = "red", lty = 5)
> dev.off()
> plot(baltimore, type = "o", main = "Total PM2.5 Emissions in Baltimore County", xlab = "Year", ylab = "PM2.5 Emissions", pch = 18, col = "red", lty = 5)
