## simple method for outlier calculation: ESD
# If point within = [mean - t * SD, mean + t * SD], point is not an outlier

'Creating normally distributed dataset with 10 normally distributed values(
around 0) and the 11th value is 150'
x = c(rnorm(10), 150); x
t = 3
m = mean(x)
s = sd(x)

# Define ranges of values that classify as not being outlier
b1 = m - s*t; b1
b2 = m + s*t; b2

# if value is outside range, we classify point as outlier
y = ifelse(x >= b1 & x <= b2, 0, 1); y
'0 0 0 0 0 0 0 0 0 0 1 is the output, the last value is an outlier'

# plotting the points with the outlier as a different color
plot(x, col=y+2)

# simple boxplot
boxplot(x)
boxplot.stats(x)
'out
[1] 150 which is the outlier'



# package outliers
library(outliers)

########## Dixon Test
dixon.test(x)
########## Grubbs Test
grubbs.test(x, 
            type = 11, 
            two.sided = T) # type 11 for 2 sides, opposite




### Advanced techniques for multivariate data
library(mvoutlier)

elements = data.frame(Hg = moss$Hg, 
                      Fe = moss$Fe, 
                      Al = moss$Al, 
                      Ni = moss$Ni)
head(elements)

################ sign1 method is based on covariance metrics
myout = sign1(elements[,1:4], 
              qqcrit = 0.975); 
myout

################ pcout method for multivariate outlier detection
myout = pcout(elements[,1:4])
myout
'
myout gives $wfinal01 which has values of 0(not at outlier), 1(outlier)
'
# plot Fe vs Al, with the coloration correspoding to the $wfinal01 value
plot(moss$Fe, 
     moss$Al, 
     col = myout$wfinal01 + 2) # red points are outliers, green points are not

