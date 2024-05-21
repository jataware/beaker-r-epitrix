# Description
Transforming a growth rate into a reproduction number using the 
`r2R0` function with serial interval distribution estimates for Ebola.

# Code
```
```r
library(distcrete)
r2R0 <- function(r, w, trunc = 1000) {
  # function definition
}
gamma_mucv2shapescale <- function(mu, cv) {
  # conversion function definition
}
```
mu <- 15.3 # days
sigma <- 9.3 # days
param <- gamma_mucv2shapescale(mu, sigma / mu)

if (require(distcrete)) {
  w <- distcrete("gamma", interval = 1,
                 shape = param$shape,
                 scale = param$scale, w = 0)

  r2R0(c(-1, -0.001, 0, 0.001, 1), w)

```