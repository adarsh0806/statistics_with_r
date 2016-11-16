'
Analysis of Variance(ANOVA) is used for normally distributed and independent 
data sets. We can use it to compare the means of different groups.

If the data is not normally distributed the equivalent test(to ANOVA) would be the 
Kruskal Wallis test for non parametric data.
'
head(iris)
attach(iris)

'Let’s check if our grouping variable is a factor'
is.factor(Species)

'let’s check the levels of it'
levels(Species)

'For a first visual impression, we will check the Sepal.length by species'
boxplot(Sepal.Length~Species)

'Let’s get the means of Sepal.Length for all groups'
by(Sepal.Length, Species, mean)

'
H0: All three types have same mean values for Sepal.Length
H1: All three types do no have same mean values for Sepal.Length
F test - one way test (for normally distributed and independent data, nID)'
oneway.test(Sepal.Length~Species) # p-value < 2.2e-16, 

'The command for ANOVA is aov'
myANOVA <- aov(Sepal.Length~Species, data=iris)
myANOVA

summary(myANOVA)
attributes(myANOVA)
