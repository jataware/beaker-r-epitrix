# Description
Example demonstrating how to convert Gamma distribution parameters from mean and coefficient of variation to shape and scale, and vice versa.

# Code
```
library(stats)

# Define the functions (assuming they are not provided in the code directly)
gamma_mucv2shapescale <- function(mu, cv) {
  shape <- (mu / cv) ^ 2
  scale <- (cv ^ 2) * mu
  return(list(shape = shape, scale = scale))
}
gamma_shapescale2mucv <- function(shape, scale) {
  mu <- shape * scale
  cv <- 1 / sqrt(shape)
  return(list(mu = mu, cv = cv))
}

## set up some parameters

mu <- 10
cv <- 1


## transform into shape scale

tmp <- gamma_mucv2shapescale (mu, cv)
shape <- tmp$shape
scale <- tmp$scale


## recover original parameters when applying the revert function

gamma_shapescale2mucv(shape, scale) # compare with mu, cv


## empirical validation:
## check mean / cv of a sample derived using rgamma with
## shape and scale computed from mu and cv

gamma_sample <- rgamma(n = 10000, shape = shape, scale = scale)
mean(gamma_sample) # compare to mu
sd(gamma_sample) / mean(gamma_sample) # compare to cv

```