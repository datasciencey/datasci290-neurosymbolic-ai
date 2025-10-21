### -------------------------------------------------------------
### Realistic Simulated Salary Data (for Regression Examples)
### -------------------------------------------------------------
set.seed(42)

n <- 120  # sample size

# --- Predictors ------------------------------------------------

# 1. Years of Experience: 0–20 years, realistic to one decimal
YearsExperience <- round(runif(n, 0, 20), 1)

# 2. Education Level: categorical (1=Bachelor, 2=Master, 3=Doctorate)
EducationLevel <- sample(1:3, n, replace = TRUE)

# 3. Age: correlated with experience, but with some noise
Age <- round(22 + YearsExperience + rnorm(n, 0, 3), 1)

# 4. Hours per Week: mostly around 40 ± 5
HoursWeek <- round(rnorm(n, mean = 40, sd = 5), 1)

# 5. Team Size: grows with experience, but integer count
TeamSize <- pmax(1, round(1 + 0.7 * YearsExperience + rnorm(n, 0, 2)))

# 6. Job Satisfaction: random 1–10 scale
JobSatisfaction <- round(runif(n, 1, 10), 1)

# --- Response --------------------------------------------------
# Salary in $1000s — realistic noise and variability
Salary <- round(
  40 + 3.5 * YearsExperience + 5 * EducationLevel +
    0.8 * TeamSize + rnorm(n, 0, 10),
  1
)

# Combine into data frame
df <- data.frame(Salary, YearsExperience, EducationLevel, Age,
                 HoursWeek, TeamSize, JobSatisfaction)

# Quick preview
head(df)



pairs(df,
      main = "Pairwise Scatterplots: Salary and Predictors",
      pch = 19, col = rgb(0, 0, 0, 0.3))



par(mfrow = c(1, 3))

# Strong correlation
plot(df$YearsExperience, df$Salary,
     pch = 19, col = "steelblue",
     main = "Salary vs Years of Experience",
     xlab = "Years of Experience", ylab = "Salary ($1000s)")
abline(lm(Salary ~ YearsExperience, data = df), col = "red", lwd = 2)

# Moderate correlation
plot(df$TeamSize, df$Salary,
     pch = 19, col = "darkgreen",
     main = "Salary vs Team Size",
     xlab = "Team Size", ylab = "Salary ($1000s)")
abline(lm(Salary ~ TeamSize, data = df), col = "red", lwd = 2)

# Weak correlation
plot(df$JobSatisfaction, df$Salary,
     pch = 19, col = "orange",
     main = "Salary vs Job Satisfaction",
     xlab = "Job Satisfaction (1–10)", ylab = "Salary ($1000s)")
abline(lm(Salary ~ JobSatisfaction, data = df), col = "red", lwd = 2)

par(mfrow = c(1, 1))







### -------------------------------------------------------------
### Regression Plane
### -------------------------------------------------------------
library(scatterplot3d)

# Fit the regression model
model <- lm(Salary ~ YearsExperience + TeamSize, data = df)

# Create 3D scatterplot
s3d <- scatterplot3d(
  x = df$YearsExperience,
  y = df$TeamSize,
  z = df$Salary,
  pch = 21, bg = "black", col.axis = "gray40",
  color = "black",
  grid = TRUE, box = TRUE,
  angle = 65,          # Tilted angle for better view of plane
  main = "Regression Plane: Salary ~ Experience + Team Size",
  xlab = "Years of Experience",
  ylab = "Team Size",
  zlab = "Salary ($1000s)",
  highlight.3d = FALSE,
  mar = c(5, 4, 4, 4),
  shade = 0.4          # Adds some gray shading to plane
)

# Add the fitted regression plane in red
s3d$plane3d(model, col = "red", lty = "solid", lwd = 2)

# Add faint grid lines for better 3D effect
s3d$points3d(df$YearsExperience, df$TeamSize, df$Salary,
             pch = 21, bg = "black", col = "black")

# Optional annotation
mtext("Black points: observed data | Red plane: fitted regression", side = 3, line = 0.5, cex = 0.8)
