#Nolan Winkler
require(fastR)
# Utilities
#Get in utilities dataset and do quick look at it
data(utilities)
summary(utilities)

#raw plot
xyplot(ccf ~ (year+month/12), data=utilities, xlab="Time", ylab="Gas Usage (ccf)", main="Gas Usage by Month 1") -> prelimplot1
#group by months & output nicer
xyplot(ccf ~ (year+month/12), data=utilities, xlab="Time", ylab="Gas Usage (ccf)", groups=month, type=c('p', 'l'), main="Gas Usage by Month 2") -> prelimplot2
bwplot(ccf~factor(month), data=utilities, ylab="Gas Usage (ccf)", xlab="Month", main="Gas Usage by Month 3") -> prelimplot3

#Adjust for different number of billing days per month
utilities$ccfpday <- utilities$ccf / utilities$billingDays
xyplot(ccfpday ~ (year+month/12), data=utilities, xlab="Time", ylab="Gas Usage (ccf per day)", main="Gas Usage by Month Adjusted for Billing Days 1") -> prelimplot4
xyplot(ccfpday ~ (year+month/12), data=utilities, xlab="Time", ylab="Gas Usage (ccf per day)", groups=month, type=c('p', 'l'), main="Gas Usage by Month Adjusted for Billing Days 2") -> prelimplot5
bwplot(ccfpday~factor(month), data=utilities, ylab="Gas Usage (ccf per day)", xlab="Month", main="Gas Usage by Month Adjusted for Billing Days 3") -> prelimplot6

#Check vs. temperature
xyplot(ccfpday ~ temp, data=utilities, xlab="Temperature (°F)", ylab="Gas Usage (ccf per day)", main="Gas Usage vs. Temperature Adjusted for Billing Days") -> prelimplot7
#Run a regression based on data displaying linear shape
ols <- lm(ccfpday ~ temp, data=utilities)
summary(ols)
