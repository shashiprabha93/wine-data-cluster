#read the csv
WineData=read.csv("wine.data.csv",header=TRUE)

#Skip first cpolumn
plot(WineData[,2:14])

#clean data
WineDataClean = WineData[rowSums(is.na(WineData))==0,]
nrow(WineData)

#Feature Engineering & clustering
Winedata.f=Wine
Wine.f$Type <- NULL
View(Wine.f)
Wine.stand <- scale(Wine.f[-1])
View(Wine.stand)
results<- kmeans(Wine.stand,3)
attributes(results)
results$centers
table(Wine$Type,results$cluster)

