'
Pearson correlation coefficient - 
2 numeric variables, 
linear coefficient,
parametric data

Spearman rank correlation coefficient - 
2 numeric variables, 
monotonic
coefficient, non-parametric data

Kendall rank correlation coefficient - 
x-y concordance of pairs, 
nonparametric data
'
?cor.test
'
cor.test(x, y,
         alternative = c("two.sided", "less", "greater"),
method = c("pearson", "kendall", "spearman"),
exact = NULL, conf.level = 0.95, continuity = FALSE, ...)
'
plot(Sepal.Length, Sepal.Width)

# Pearson
cor(Sepal.Length, 
    Sepal.Width, 
    method="pearson") # pearson is default,
# x y order does not matter

# Spearman
cor(Sepal.Length, Sepal.Width, method="spearman")

# Kendall
cor(Sepal.Length, Sepal.Width, method="kendall")

# For more specific output, use cor.test
cor.test(Sepal.Length, Sepal.Width, method="pearson")

# Covariance
# The mean value of the product of the deviations of two variates from 
# their respective means.
'
Covariance is a measure of how changes in one variable are 
associated with changes in a second variable. Specifically, covariance 
measures the degree to which two variables are linearly associated. 
However, it is also often used informally as a general measure of how 
monotonically related two variables are. 
http://stats.stackexchange.com/questions/29713/what-is-covariance-in-plain-language
http://stats.stackexchange.com/questions/18058/how-would-you-explain-covariance-to-someone-who-understands-only-the-mean
'
cov(Sepal.Length, Sepal.Width)

# we can get a correlation matrix
cor(iris[,1:4]) # the character column Species must be excluded
