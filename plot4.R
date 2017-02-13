> require(downloader)
> dataset_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
> download(dataset_url, dest = "data.zip", mode = "wb")
> unzip("data.zip", exdir = "./")
> NEI <- readRDS("summarySCC_PM25.rds")
> SCC <- readRDS("Source_Classification_Code.rds")
> SCC2 <- SCC[grepl("Coal" , SCC$Short.Name), ]
> NEI2 <- NEI[NEI$SCC %in% SCC2$SCC, ]
> png("Plot4.png")
> plot4 <- ggplot(NEI2, aes(x = factor(year), y = Emissions, fill =type)) + geom_bar(stat= "identity", width = .4) + xlab("year") +ylab("Coal-Related PM2.5 Emissions") + ggtitle("Total Coal-Related PM2.5 Emissions") 
> print(plot4)
> dev.off()
> plot4 <- ggplot(NEI2, aes(x = factor(year), y = Emissions, fill =type)) + geom_bar(stat= "identity", width = .4) + xlab("year") +ylab("Coal-Related PM2.5 Emissions") + ggtitle("Total Coal-Related PM2.5 Emissions")
> print(plot4) 

