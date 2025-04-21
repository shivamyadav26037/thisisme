# Load dataset
data(mtcars)

# Fit logistic regression model to predict transmission (am)
model <- glm(am ~ mpg + hp + wt, data = mtcars, family = binomial)

# Summary of the model
summary(model)

# Extract coefficients
coeffs <- coef(model)


# Print logistic regression equation
cat("Logistic Regression Equation:\n")
cat("log(p / (1 - p)) = ",
    coeffs[1], " + ",
    coeffs[2], " * mpg + ",
    coeffs[3], " * hp + ",
    coeffs[4], " * wt", "\n")
