'Logistic Regression can be used to predict a binary (2 possible values) outcome
variable (probability).
- The explanatory or independent variables can be continuous
(numeric)
- In this exercise we want to predict the probability of the outcome
am = 1
- am = Transmissions is binary
- We are trying to explain am with the variables mpg, drat, wt
- At first we are going to check if all three x variables contribute to
our model'

attach(mtcars)

# Generalized linear model
glm(data=mtcars, 
    am ~ wt + mpg + drat, 
    family ="binomial")

# verbose output
summary(glm(data=mtcars, am ~ wt + mpg + drat, family ="binomial"))
# mpg and drat do not show significance - therefore we can delete them from our model
'p values for each
wt - 0.039 * only this is lower than 0.05 threshold, therefore only this contributes
in a significant way.
mpg -  0.175  
drat - 0.180'

# now only considering wt
mylog = glm(data=mtcars, am ~ wt, family ="binomial")
summary(mylog)

# Prediction
# now we see what the model would predict for wt of 4.500
addon = data.frame(wt=4.500)
predict(mylog, addon, type="response")
# type response for probabilities
# The model would predict that a car of 4500 lb has 0 % probability of
# having a manual transmission(value 1)