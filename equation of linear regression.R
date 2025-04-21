x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48) 

model <- lm(y~x)
summary(model)
coeffs <- coef(model)

cat("y=", coeffs[1], "+" , coeffs[2],"* x", "\n")


intercept <- coef(model)[1]
slop <- coef(model)[2]
cat("y=", intercept, "+" , slop,"* x", "\n")
