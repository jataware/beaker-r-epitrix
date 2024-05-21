# Description
Plot the relationship between R0 and attack rate

# Code
```
AR2R0 <- function(AR) {
  return(-log(1 - AR) / AR)
}
## plot the relationship between R0 and attack rate
x <- seq(0.01, 1, 0.01)
plot(AR2R0(x), x, type = "l", xlab = "R0", ylab = "Attack rate")

```