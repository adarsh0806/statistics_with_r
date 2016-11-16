pairs(iris)

library(lattice)
splom(iris)

# Packages - stats, nortest(for tests of normality), multcomp(for inference in 
# parametric models), mutoss(multiple testing procedures), agricolae(Duncan test,
# Scheffe adjustment), coin(for inference in permuatiotions), DTK(Dunett Tukey
# Kramer - this is adjusted for unbalanced samples)


############################  Z test ##########################################
? prop.test

set.seed(2489)
ourdata = rnorm(1000, mean=600, sd=80)
hist(ourdata)
'
we want to test if 50% of "ourdata" is greater than 700
H0: equal proportion 50/50 of data greater and smaller 700
at first we need to create an object that sorts for counts greater 700'

sortedobject<- ifelse(ourdata >700, "yes", "no")
table(sortedobject)

totalnumber = 1000
yes = 102
prop.test(x=yes, n=totalnumber, alternative="two.sided")
'
This tells us that there is no equal distribution (yes vs no) of >700
There is also an estimated probability of yes of approx. 0.1
'

'1 sided test is also possible
- here we are stating H0 that the prob >700 is greater than 0.5'
prop.test(x=yes, n=totalnumber, alternative="less")

'here we are stating H0 that the prob >700 is smaller than 0.5'
prop.test(x=yes, n=totalnumber, alternative="greater")

'- lets create an object of our Test'
mytest = prop.test(x=yes, n=totalnumber, alternative="two.sided")
'- data we can extract from our object'
names(mytest)

# this tells us that the probability  >700 is ~10%
mytest$estimate

'- this tells us that the probability >700 is approx 10%
- if we would have a small sample we could also use the prop.test
- but correct=T should be used
- alternatively for small n t.test is an option'