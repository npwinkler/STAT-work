#2.51
pbinom(8,50,.25)
dbinom(8,50,.25)
dbinom(0:50,50,.25) #search for closest value greater than dbinom(8), x=16
pbinom(8,50,.25)+1-pbinom(16,50,.25)
binom.test(8,50,.25)
#2.54
binom.test(17,27,.5, "greater")
binom.test(36,43,.5, "greater")
#2.55
qbinom(.025,200,.5)-1 #gives 86, but testing with pbinom shows you really need 85 - will always be -1 for the left crit value
qbinom(.975,200,.5) # gives 114, which is right since it's the right critical value
pbinom(85,200,.55)+1-pbinom(114,200,.55)
qbinom(.025,400,.5)-1 #179
qbinom(.975,400,.5) #220
pbinom(179,400,.55)+1-pbinom(220,400,.55)
Two_Five_Five <- function(n) {
  +     qbinom(.025,n,.5)-1 -> Left_CV
  +     qbinom(.975,n,.5) -> Right_CV
  +     pbinom(Left_CV,n,.55) -> PV_One
  +     1-pbinom(Right_CV, n, .55) -> PV_Two
  +     return(PV_One+PV_Two)}
#2.91
firstDigit <- function(x) {
  trunc(x/10^(floor(log(abs(x),10))))
}
