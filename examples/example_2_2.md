# Description
Recover original mean (mu) and coefficient of variation (cv) from shape and scale parameters of a Gamma distribution.

# Code
```
gamma_shapescale2mucv <- function(shape, scale) {
    mu <- shape * scale
    cv <- 1 / sqrt(shape)
    return(list(mu = mu, cv = cv))
}
#'
#' ## recover original parameters when applying the revert function
#'
#' gamma_shapescale2mucv(shape, scale) # compare with mu, cv

```