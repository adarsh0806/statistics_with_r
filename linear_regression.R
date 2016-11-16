head(cars)
attach(cars)

# visual impression of our data
plot(x=speed, y=dist)

# the correlation between speed and distance
cor(x=speed, y=dist) # positive correlation

# our linear model
lm(dist~speed) # note that first variable here is the Y variable

# to get a summary
summary(lm(dist~speed))
# in the field coefficients we can see that the slope for speed is 3.9
# the according p value shows us the slope is not 0 (p<0.05)

# to extract the coefficients
coef(lm(dist~speed))

# to get the conf intervals
confint(lm(dist~speed))

# to get the anova table
anova(lm(dist~speed))

# to check for the regression assumptions - preset plots
plot(lm(dist~speed))

# extrapolation or prediction of the model
plot(speed, dist)

'
Make prediction for stopping distance when the speed is 45
'
addon = data.frame(speed=45)

# This gives the prediction for the addon value of 45
predict(lm(dist~speed),addon)
'> predict(lm(dist~speed),addon)
       1 
159.3793 '
