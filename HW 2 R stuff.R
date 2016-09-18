#2.18
(2+1)/(2+6+1+9)
#.1666667
2/(2+6)
#.25
2/(2+1)
#.66667

#2.28
DiseaseRate <- .01
CorrectDisease <- .98
CorrectHealty <- .99
HealthyRate <- .99
#P(+|D) = .98, P(-|D)=.02
#P(-|H) = .99, P(+|H)=.01
#P(D|+) = 0.4974619
#quite a high number compared to before, due to disease being less rare
> DiseaseRate<-.1
> HealthyRate<-.9
> (DiseaseRate * .98) / (DiseaseRate*.98+HealthyRate*.01)
#P(D|+) = 0.9158879

#2.30
DefectiveRate=.1
pbinom(1, 4, .1)

>1-pbinom(0,4,.1)
> 1-pbinom(0,4,.2)
> 1-pbinom(0,4,.4)
> 1-pbinom(0,4,.5)
> 1-pbinom(0,4,.6)
> 1-pbinom(0,4,.8)

1-pnbinom(13,100,.92) #free throw shooter - probability it will take at least 13 failures before the 100th sucessess
