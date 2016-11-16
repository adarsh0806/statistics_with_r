'Kruskal Wallis test
- for non-normally distributed data(non parametric data)
- equivalent to ANOVA(which is used for parametric data)'

kruskal.test(data=iris, 
             Sepal.Length~Species)# p-value < 2.2e-16, reject H0 that sepal.length is uniform across species

'
Chi squared test of independance, parametric(works on normally distributed data)
It can be used to test the independance of two categorical variables.
'
attach(mtcars)
head(mtcars)

'
We will explore if the "vs" and "am" categorical variables are independant of
each other
'
# contingency table - will give us the counts of the categorical variables
table(am,vs)
# first visual impression
barplot((table(am,vs)), 
        beside=T)
# ch square test
# H0: am,vs are independant of each other
# H1: am,vs are not independant of each other
chisq.test(table(am,vs)) # p-value = 0.5555, cannot reject H0

'
For non parametric data(non normally distributed data) the equivalent to the 
Chi Squared test of independance is the Fishers exact test
'
?fisher.test
fisher.test(table(am,vs)) # p-value = 0.4727
