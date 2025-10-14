### --- 1. Generate synthetic Salary–Experience data --------------------------

set.seed(123)
n <- 30
YearsExperience <- runif(n, 0, 20)                    # 0–20 years
Salary <- 40000 + 3500 * YearsExperience + rnorm(n, mean = 0, sd = 10000)
df <- data.frame(salary = Salary, years_exp = YearsExperience)

# Quick look
plot(df$years_exp, df$salary,
     main = "Salary vs Years of Experience",
     xlab = "Years of Experience", ylab = "Salary",
     pch = 19, col = "steelblue")

### --- 2. Bootstrap linear regression function ------------------------------

bootstrapLM_salary_exp <- function(data, repetitions = 5000,
                                   confidence.level = 0.95, seed = NULL) {
  if (!all(c("salary", "years_exp") %in% names(data))) {
    stop("data must contain columns 'salary' and 'years_exp'.")
  }
  if (!is.null(seed)) set.seed(seed)
  
  y <- data$salary
  x <- data$years_exp
  n <- length(y)
  
  # Observed coefficients
  stat.obs <- coef(lm(y ~ x))
  
  # One bootstrap draw
  bootFun <- function() {
    idx <- sample.int(n, size = n, replace = TRUE)
    coef(lm(y[idx] ~ x[idx]))
  }
  
  # Collect bootstrap coefficients (rows: intercept, slope)
  stat.boot <- replicate(repetitions, bootFun())
  rownames(stat.boot) <- c("(Intercept)", "years_exp")
  
  # Percentile CIs
  alpha <- 1 - confidence.level
  ci <- apply(stat.boot, 1, quantile, probs = c(alpha/2, 1 - alpha/2))
  
  # Assemble output
  out <- cbind(
    lower    = ci[1, ],
    estimate = stat.obs,
    upper    = ci[2, ]
  )
  
  return(list(confidence.interval = out, bootStats = stat.boot))
}

### --- 3. Run bootstrap and inspect CI --------------------------------------

res <- bootstrapLM_salary_exp(df, repetitions = 5000,
                              confidence.level = 0.95, seed = 42)

print(res$confidence.interval)

### --- 4. Parametric (t-based) CI for slope ---------------------------------

fit <- lm(salary ~ years_exp, data = df)
b1_hat <- coef(fit)[["years_exp"]]
se_b1  <- summary(fit)$coefficients["years_exp", "Std. Error"]
tcrit  <- qt(0.975, df = df.residual(fit))

ci_param <- c(lower = b1_hat - tcrit * se_b1,
              estimate = b1_hat,
              upper = b1_hat + tcrit * se_b1)

### --- 5. Extract bootstrap CI for slope ------------------------------------

ci_mat <- res$confidence.interval
slope_row <- if ("years_exp" %in% rownames(ci_mat)) "years_exp" else rownames(ci_mat)[2]
ci_boot <- ci_mat[slope_row, c("lower", "estimate", "upper")]

### --- 6. Assemble and plot both CIs ----------------------------------------

CIs <- rbind(Parametric = ci_param,
             Bootstrap  = ci_boot)

xpos <- 1:2
ylim <- range(CIs[, c("lower", "upper")])

plot(NA, xlim = c(0.5, 2.5), ylim = ylim,
     xaxt = "n", xlab = "", ylab = expression(hat(beta)[1]),
     main = "compare confidence intervals")

# Parametric (blue)
segments(x0 = xpos[1], y0 = CIs["Parametric", "lower"],
         x1 = xpos[1], y1 = CIs["Parametric", "upper"],
         col = "blue", lwd = 2)
points(xpos[1], CIs["Parametric", "estimate"],
       pch = 16, col = "blue", cex = 1.2)

# Bootstrap (red)
segments(x0 = xpos[2], y0 = CIs["Bootstrap", "lower"],
         x1 = xpos[2], y1 = CIs["Bootstrap", "upper"],
         col = "red", lwd = 2)
points(xpos[2], CIs["Bootstrap", "estimate"],
       pch = 16, col = "red", cex = 1.2)

axis(1, at = xpos, labels = c("Parametric", "Bootstrap"), las = 2)
box()







## Assumes df with columns: salary, years_exp
## Fit model
fit <- lm(salary ~ years_exp, data = df)

## Grid of x for smooth bands
x_grid <- seq(min(df$years_exp), max(df$years_exp), length.out = 200)
newd <- data.frame(years_exp = x_grid)

## Confidence band for the mean response
pred_ci <- predict(fit, newdata = newd, interval = "confidence", level = 0.95)  # fit, lwr, upr

## Prediction band for a new individual
pred_pi <- predict(fit, newdata = newd, interval = "prediction", level = 0.95)  # fit, lwr, upr

## Base scatter
plot(df$years_exp, df$salary,
     main = "Least Squares Fit with CI (mean) and PI (new obs)",
     xlab = "Years of Experience",
     ylab = "Salary",
     pch  = 1, col = "black")

## Fitted line (black)
lines(x_grid, pred_ci[, "fit"], lwd = 3, col = "black")

## Confidence interval (red, dashed)
lines(x_grid, pred_ci[, "lwr"], lwd = 3, col = "red", lty = 2)
lines(x_grid, pred_ci[, "upr"], lwd = 3, col = "red", lty = 2)

## Prediction interval (blue, dotted)
lines(x_grid, pred_pi[, "lwr"], lwd = 3, col = "blue", lty = 3)
lines(x_grid, pred_pi[, "upr"], lwd = 3, col = "blue", lty = 3)

## Legend
legend("topleft",
       legend = c("Prediction (mean fit)", "Conf. Int (mean)", "Pred. Int (new)"),
       lwd = c(3, 3, 3),
       col = c("black", "red", "blue"),
       lty = c(1, 2, 3),
       bty = "n")












# ==========================================================
# Generate synthetic salary vs years of experience data
# ==========================================================
set.seed(2025)

n <- 400
years_exp <- runif(n, 0, 25)             # random experience between 0 and 25 years

# true underlying pattern: mostly linear, mild curvature
base <- 35000
b1   <- 5200
b2   <- -100
sigma <- 9000 + 200 * years_exp          # more variation for senior workers

salary <- base + b1*years_exp + b2*years_exp^2 + rnorm(n, 0, sigma)
salary <- pmax(salary, 30000)            # ensure no unrealistic low salaries

df <- data.frame(
  salary = salary,
  years_exp = years_exp
)

# ==========================================================
# Scatterplot of salary vs years of experience
# ==========================================================
plot(df$years_exp, df$salary,
     pch = 1, col = "black",
     xlab = "Years of Experience",
     ylab = "Salary",
     main = "Salary vs Years of Experience")
grid()

# ==========================================================
# Add-on functions to draw fits on the existing scatterplot
# (assumes df with columns: salary, years_exp; plot already drawn)
# ==========================================================

add_linear_fit <- function(data, col = "red", lwd = 3) {
  fit <- lm(salary ~ years_exp, data = data)
  xg <- seq(min(data$years_exp), max(data$years_exp), length.out = 300)
  yg <- predict(fit, newdata = data.frame(years_exp = xg))
  lines(xg, yg, col = col, lwd = lwd)
  invisible(fit)
}

add_quadratic_fit <- function(data, col = "green", lwd = 3) {
  fit <- lm(salary ~ poly(years_exp, 2, raw = TRUE), data = data)
  xg <- seq(min(data$years_exp), max(data$years_exp), length.out = 300)
  yg <- predict(fit, newdata = data.frame(years_exp = xg))
  lines(xg, yg, col = col, lwd = lwd)
  invisible(fit)
}

add_cubic_fit <- function(data, col = "blue", lwd = 3) {
  fit <- lm(salary ~ poly(years_exp, 3, raw = TRUE), data = data)
  xg <- seq(min(data$years_exp), max(data$years_exp), length.out = 300)
  yg <- predict(fit, newdata = data.frame(years_exp = xg))
  lines(xg, yg, col = col, lwd = lwd)
  invisible(fit)
}

# ----------------------------------------------------------
# Example calls (run after you plot the scatter):
# plot(df$years_exp, df$salary)
# add_linear_fit(df)      # adds red straight line
# add_quadratic_fit(df)   # adds red quadratic curve
# add_cubic_fit(df)       # adds red cubic curve
# ----------------------------------------------------------

