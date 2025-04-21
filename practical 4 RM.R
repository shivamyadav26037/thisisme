install.packages("lmtest")
library(lmtest)
x<-c(1,2,3,4,5,6,7,8,9,10)
y<-c(2,5,9,13,18,24,31,39,48,60) + rnorm(10, mean=0, sd=x)
model<-lm(y~x)
plot(x, residuals(model), main="Residuals vs X", ylab="Residuals", xlab="X")
abline(h=0, col="red")
bptest(model)



install.packages("stats")
library(stats)
sales_data<-c(100, 102, 104, 103, 105, 107, 106, 108, 110, 112)
acf(sales_data, main="Autocorrelation of Sales Data")
acf_values<-acf(sales_data, plot=FALSE)
print(acf_values)



install.packages("car")
library(car)
set.seed(123)
X1<-c(1,2,3,4,5,6,7,8,9,10)
X2<-X1*2+rnorm(10, mean=0, sd=0.5)
Y<-3+2*X1+1.5*X2+rnorm(10, mean=0, sd=1)
model_mc<-lm(Y~X1+X2)
vif_values<-vif(model_mc)
print(vif_values)