# Multiple Linear Regression
# one numeric Y variable but several x (explanatory) variables
head(mtcars)
attach(mtcars)
# Objective: create a model for mpg (explained with drat and wt)
mymodel = lm(mpg ~ drat + wt) # more x variables can be attached by using +
summary(mymodel)
'R-squared:  0.7609
p-value: 9.761e-10
- R sq tells us that we can explain approx. 76% of the outcome with
our model
- the overal p value shows significance of our model
- intercept tells the mean y value when all x are 0
- drat can not be assumed as influencing in this model (p value)
- wt is a significant part of the model with a negative slope of -4.8
- this means: if wt increases, mpg decreases
'
# Pearson correlation between drat and wt
cor(drat, wt) # we see a negative correlation
# Confidence interval
confint(mymodel)

'
- variables can also be manipulated before feeding into the model
- using the Interpret function : I
'
lm(mpg ~ drat + I(wt^2)+wt)

anova(lm(mpg ~ drat + I(wt^2)+wt))
# The sum square shows us which variable brings the biggest
# variance in the model