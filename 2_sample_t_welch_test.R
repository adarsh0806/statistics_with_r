'parametric, 2 sample or population means can be compared.

We have a numeric outcome variable Y that we want to compare with a 
categorical explanatory variable X (2 levels - e.g. yes vs no)'
head(mtcars)

'
X - wt variable
Y - we will be looking at the am variable which takes two values - 0,1'
attach(mtcars)

'visual orientation'
boxplot(data=mtcars,  wt~am)


'H0: mean wt of car with am = 1 is the same as the mean wt of cars with am = 0
H1: meant wt of cars with manual and auto transmissions is not the same
- two sided
- independent : paired=F'

# outcome variable = mtcars$wt, always on the left side
# explanatory varibale = mtcars$am, on the right side
t.test(mtcars$wt~mtcars$am, 
       alt="two.sided", 
       conf=0.95,
       mu=0, 
       paired=F, 
       var.equal=F) # p-value = 6.272e-06, we reject H0

# alternative t test with default arguments removed
t.test(mtcars$wt~mtcars$am)

# third alternative without ~
t.test(mtcars$wt[mtcars$am==0], 
       mtcars$wt[mtcars$am==1])

'The t test is done when we do not know if the standard deviations are equal
between the two samples. We can check the standard deviation as follows:'
var(mtcars$wt[mtcars$am==0]) 
var(mtcars$wt[mtcars$am==1])

'Paired T Test for means of 2 dependent or paired populations
(same length) the same command can be used but: paired=T'