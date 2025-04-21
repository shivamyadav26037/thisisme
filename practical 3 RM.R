set.seed(322)
x1 <-rnorm(20,1,0.5)
x2 <-rnorm(20,5,0.98)
y1 <-rnorm(20,8,2.15)

Model1 <-lm(y1 ~ polym(x1,x2,degree=2,raw=TRUE))
summary(Model1)

Model_1_M2<-lm(y1 ~ x1 + x2 + I(x1^2) + I(x2^2) + x1:x2)
summary(Model_1_M2)

Model1_3degree<-lm(y1~polym(x1,x2,degree=3,raw=TRUE))
summary(Model1_3degree)

Model1_4degree<-lm(y1~polym(x1,x2,degree=4,raw=TRUE))
summary(Model1_4degree)

#Logistic  Regression
input <- mtcars[,c("am","cyl","hp","wt")]
print(head(input))
input <- mtcars[,c("am","cyl","hp","wt")]
model = glm(formula = am ~ cyl + hp + wt, data = input, family = binomial)
summary(model)


#Poission Regression
input <- warpbreaks
print(head(input))
model <-glm(formula = breaks ~ wool + tension, data = warpbreaks, family = poisson)
summary(model)



