require(fastR)
data(utilities)
summary(utilities)
xyplot(ccf ~ (year+month/12), data=utilities, xlab="Time", ylab="Gas Usage (ccf)", main="Gas Usage by Month 1") -> prelimplot1
xyplot(ccf ~ (year+month/12), data=utilities, xlab="Time", ylab="Gas Usage (ccf)", groups=month, type=c('p', 'l'), main="Gas Usage by Month 2") -> prelimplot2
bwplot(ccf~factor(month), data=utilities, ylab="Gas Usage (ccf)", xlab="Month", main="Gas Usage by Month 3") -> prelimplot3
utilities$ccfpday <- utilities$ccf / utilities$billingDays
xyplot(ccfpday ~ (year+month/12), data=utilities, xlab="Time", ylab="Gas Usage (ccf per day)", main="Gas Usage by Month Adjusted for Billing Days 1") -> prelimplot4
xyplot(ccfpday ~ (year+month/12), data=utilities, xlab="Time", ylab="Gas Usage (ccf per day)", groups=month, type=c('p', 'l'), main="Gas Usage by Month Adjusted for Billing Days 2") -> prelimplot5
bwplot(ccfpday~factor(month), data=utilities, ylab="Gas Usage (ccf per day)", xlab="Month", main="Gas Usage by Month Adjusted for Billing Days 3") -> prelimplot6
xyplot(ccfpday ~ temp, data=utilities, xlab="Temperature (°F)", ylab="Gas Usage (ccf per day)", main="Gas Usage vs. Temperature Adjusted for Billing Days") -> prelimplot7

StartTimeData <- ChickWeight[ChickWeight$Time==0, ]
EndTimeData <- ChickWeight[ChickWeight$Time==21, ]
NewStartTimeData <- StartTimeData[ -c(8, 15, 16, 18, 44), ]
StartTimeData$Chick %in% EndTimeData$Chick
NewStartTimeData <- StartTimeData[StartTimeData$Chick %in% EndTimeData$Chick, ]
WeightDiffs <- EndTimeData$weight-NewStartTimeData$weight
PercentageWeightDiffs <- (EndTimeData$weight - NewStartTimeData$weigh)/NewStartTimeData$weight
bwplot(WeightDiffs~NewStartTimeData$Diet, main="Absolute Weight Differences of Chicks Based on Diet", xlab="Diet Number", ylab=" Weight Gained") -> prelimplot9
bwplot(PercentageWeightDiffs~NewStartTimeData$Diet, main="Percentage Weight Differences of Chicks Based on Diet", xlab="Diet Number", ylab="Percentage Weight Gained") -> prelimplot8

xvar <- c(0,1,2,3,4)
fx <- c(1/6, 1/3, 1/4, 1/6, 1/12)
sum(fx*x)
sum(fx*xvar)
sum(fx*xvar*xvar)

