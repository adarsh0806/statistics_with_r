'
Non parametric test(not normal distribution of data) - Mann Whitney U test,
Wilcoxon Rank Sum test.

This is done to examine the difference in median of two independent populations.

Similar to 2 sample T test except for the fact that it is non parametric.

Numeric outcome variable Y vs Categorical explanatory variable X 
'
?wilcox.test

'Trying this for the mtcars dataset'
'H0: mean wt of car with am = 1 is the same as the mean wt of cars with am = 0
H1: meant wt of cars with manual and auto transmissions is not the same'

# outcome variable = mtcars$wt, always on the left side
# explanatory varible = mtcars$am, on the right side(2 levels)
wilcox.test(mtcars$wt~mtcars$am, 
            mu=0, 
            alt="two.sided",
            conf.int=T, 
            conf.level=0.95,
            paired=F, # if paired=T, it becomes the paired T test
            correct=T, 
            exact=F)# p-value = 4.347e-05, reject H0

'Wilcoxon Signed rank test does the exact same thing as a paired T Test
but
- it is non parametric,
- Wilcox.test can be used like before, just change paired=T'