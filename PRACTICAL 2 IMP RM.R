set.seed(123)

x <- 1:100
y <- 5 + 0.5 * x + rnorm(100, sd = x / 10)
model1 <- lm(y ~ x)
summary(model1)

plot(model1$fitted.values, resid(model1), main = "Residual Plot",
     xlab = "Fitted values", ylab = "Residuals")
abline(h = 0, col = "red")
resid_sq <- resid(model1)^2
var_model <- lm(resid_sq ~ x)
pred_var <- predict(var_model)

pred_var[pred_var <= 0] <- min(pred_var[pred_var > 0]) + 1e-6

weights <- 1 / pred_var
model_wls <- lm(y ~ x, weights = weights)
summary(model_wls)