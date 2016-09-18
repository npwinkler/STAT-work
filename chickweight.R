#Nolan Winkler

#Chick Weight Analysis
#setup
require(fastR)
StartTimeData <- ChickWeight[ChickWeight$Time==0, ]
EndTimeData <- ChickWeight[ChickWeight$Time==21, ]

#remove nulls
NewStartTimeData <- StartTimeData[ -c(8, 15, 16, 18, 44), ]
NewEndTimeData <- EndTimeData[EndTimeData$Chick %in% NewStartTimeData$Chick]

#do an ANOVA to test if mean chick start weight across diets are drawn from the same population
fit <- aov(startTimeData ~imsa Diet, data=ChickWeight)
summary(fit)

#look at how chicks grew via weight, adjusting for starting weight
WeightDiffs <- NewEndTimeData$weight-NewStartTimeData$weight
PercentageWeightDiffs <- (NewEndTimeData$weight - NewStartTimeData$weight)/NewStartTimeData$weight
hist(WeightDiffs)
hist(PercentageWeightDiffs)
#Plot absolute and relative growths
bwplot(WeightDiffs~NewStartTimeData$Diet, main="Absolute Weight Differences of Chicks Based on Diet", xlab="Diet Number", ylab=" Weight Gained") -> prelimplot9
bwplot(PercentageWeightDiffs~NewStartTimeData$Diet, main="Percentage Weight Differences of Chicks Based on Diet", xlab="Diet Number", ylab="Percentage Weight Gained") -> prelimplot8
