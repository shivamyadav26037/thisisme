# Load dataset
data(mtcars)

# Fit multiple linear regression model
model <- lm(mpg ~ disp + hp + wt, data = mtcars)

# Print model summary
summary(model)
# Extract coefficients (slope & intercept)
coeffs <- coef(model)

intercept <- coeffs[1]
disp_slope <- coeffs[2]
hp_slope <- coeffs[3]
wt_slope <- coeffs[4]

# Print the regression equation
cat("mpg =", intercept, 
    "+", disp_slope, "* disp",
    "+", hp_slope, "* hp",
    "+", wt_slope, "* wt", "\n")




# Load dataset
data(mtcars)

# Fit multiple linear regression model
model <- lm(mpg ~ disp + hp + wt, data = mtcars)

# Print model summary
summary(model)

# Extract coefficients (slope & intercept)
coeffs <- coef(model)

# Print the regression equation
cat("mpg =",coeffs[1], 
    "+",coeffs[2], "* disp",
    "+", coeffs[3], "* hp",
    "+", coeffs[4], "* wt", "\n")
