'
Post hoc tests are done after statistical tests like ANOVA to adjust the 
p value for the Type 1 error(false positives)

Tukey test is done for pairwise comparision(it will test every single group 
within the ANOVA) and the groups need to be of the same size
'
# myANOVA taken from anova.R
TukeyHSD(myANOVA)

'to plot the 95% CI level'
plot(TukeyHSD(myANOVA)) # as we can see all groups differ (> 0)

'coefficients'
coefficients(myANOVA)
'
      (Intercept) Speciesversicolor  Speciesvirginica 
5.006             0.930             1.582 
This is coefficient value with setosa as the reference. The virginica coeff 
value is 1.5 times that of setosa.
'

'
Levene Test for homoscedasity, used to compare the variances of different groups
Levene test needs the car package.
'
library(car)
leveneTest(Sepal.Length, 
           Species, 
           data=iris, 
           center="mean")
'In this case since there is a significant p value we can assume var
is unequal'
