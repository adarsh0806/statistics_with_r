'Normally distributed data - ourdata'
set.seed(2489)
ourdata = rnorm(1000, 
                mean=600, 
                sd=80)
hist(ourdata)
qqnorm(ourdata)

'Uniformly distributed data - ouruniformdata'
set.seed(2489)
ouruniformdata = runif(1000)
hist(ouruniformdata)
# quantile-quantile plot
qqnorm(ouruniformdata)

'H0 of the two tests = dataset is normally distributed. so if this is the 
case the p value will be > 0.05
H1: dataset is not normally distributed'

' 2 tests for normality:
1. Shapiro Wilk Test(max number of observations is 5k)
2. Anderson Darling Test
'

################# Shapiro Wilk Test
? shapiro.test
shapiro.test(ourdata) # p value = 0.5881 > 0.05 H0 is true
shapiro.test(ouruniformdata) # p-value < 2.2e-16, reject H0, this means for this
# dataset we'd have to use non parametric tests
# Testing normality over a column
shapiro.test(iris$Sepal.Length) # p-value = 0.01018, reject H0


################# Anderson Darling Test
library(nortest)
? ad.test
ad.test(ourdata) # p-value = 0.6395, H0 is true
ad.test(ouruniformdata) # p-value < 2.2e-16, H0 is rejected
