# Description
Empirical validation: Check mean and cv of a sample derived using rgamma with shape and scale computed from mu and cv.

# Code
```
gamma_mucv2shapescale <- function(mu, cv) {
    shape <- 1 / (cv^2)
    scale <- mu * cv^2
    return(list(shape = shape, scale = scale))
}

gamma_shapescale2mucv <- function(shape, scale) {
    mu <- shape * scale
    cv <- 1 / sqrt(shape)
    return(list(mu = mu, cv = cv))
}
#' ## empirical validation:
#' ## check mean / cv of a sample derived using rgamma with
#' ## shape and scale computed from mu and cv
#'
#' gamma_sample <- rgamma(n = 10000, shape = shape, scale = scale)
#' mean(gamma_sample) # compare to mu
#' sd(gamma_sample) / mean(gamma_sample) # compare to cv

```