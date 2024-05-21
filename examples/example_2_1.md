# Description
Transform mean (mu) and coefficient of variation (cv) to shape and scale parameters of a Gamma distribution.

# Code
```
gamma_mucv2shapescale <- function(mu, cv) {
    shape <- 1 / (cv^2)
    scale <- mu * cv^2
    return(list(shape = shape, scale = scale))
}
#' @examples
#'
#' ## set up some parameters
#'
#' mu <- 10
#' cv <- 1
#'
#'
#' ## transform into shape scale
#'
#' tmp <- gamma_mucv2shapescale (mu, cv)
#' shape <- tmp$shape
#' scale <- tmp$scale

```