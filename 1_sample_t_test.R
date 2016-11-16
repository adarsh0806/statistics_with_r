? t.test

'Creating dataset that is normally distributed'
set.seed(2489)
ourdata = rnorm(1000, 
                mean=600, 
                sd=80)
hist(ourdata)
qqnorm(ourdata)

'we need to specify, x, mu, alternative and if needed the confidence
level. 
H0: mean is 300 or higher
H1: mean is less than 300'

t.test(x=ourdata, 
       mu=300, 
       alternative="less", 
       conf.level=0.95) # p-value = 1, therefore H0 is true(greater than 0.05)

'
H0: mean is 300 or lower
H1: mean is greater than 300
'
t.test(x=ourdata, 
       mu=300, 
       alternative="greater", 
       conf.level=0.95) #  p-value < 2.2e-16, we reject H0

'2 sided t test
H0: mean is 300
H1: mean is not 300
'
t.test(x=ourdata, 
       mu=300, 
       alternative="two.sided", 
       conf.level=0.95) # p-value < 2.2e-16, we reject H0


