# Description
Plot the relationship between R0 and attack rate

# Code
```
## Required imports and definitions
R02AR <- function(R0, tol = 0.01) {
  AR <- -log(1 - R0)/R0
  return(AR)
}
## plot the relationship between R0 and attack rate
x <- seq(1.01, 5, 0.01)
plot(x, R02AR(x), type = "l", xlab = "R0", ylab = "Attack rate")

```