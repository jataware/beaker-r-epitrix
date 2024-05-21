# Description
Generate synthetic data and fit it using a discretized Gamma distribution model.

# Code
```
library(distcrete)

# Define auxiliary function gamma_mucv2shapescale
# Converts mean (mu) and coefficient of variation (cv) of a Gamma distribution to shape and scale parameters
# 
# Args:
#   mu: The mean of the Gamma distribution
#   cv: The coefficient of variation of the Gamma distribution (standard deviation/mean)
# 
# Returns:
#   A list containing the shape and scale parameters of the Gamma distribution
# 
gamma_mucv2shapescale <- function(mu, cv) {
  shape <- 1 / (cv^2)
  scale <- mu * cv^2
  list(shape = shape, scale = scale)
}

# Define auxiliary function gamma_log_likelihood
# Calculates the log-likelihood of the Gamma distribution for given parameters
# 
# Args:
#   x: Data vector
#   mu: Mean of the Gamma distribution
#   cv: Coefficient of variation of the Gamma distribution
#   discrete: Boolean indicating whether to calculate the likelihood for a discretized Gamma distribution
#   interval: Interval for discretization
#   w: Disco factor for discretization
# 
gamma_log_likelihood <- function(x, mu, cv, discrete = TRUE, interval = 1, w = 0) {
  if (discrete) {
    gamma_dist <- distcrete::distcrete(
      "gamma", interval = interval, shape = mu, scale = cv, w = w
    )
    ll <- sum(log(dgamma(x, shape = mu, scale = cv)))
  } else {
    ll <- sum(dgamma(x, shape = mu, scale = cv, log = TRUE))
  }
  ll
}
#' ## generate data
#'
#' mu <- 15.3 # days
#' sigma <- 9.3 # days
#' cv <- sigma / mu
#' cv
#' param <- gamma_mucv2shapescale(mu, cv)
#'
#' if (require(distcrete)) {
#' w <- distcrete("gamma", interval = 1,
#'                shape = param$shape,
#'                scale = param$scale, w = 0)
#'
#' x <- w$r(100)
#' x
#'
#' fit_disc_gamma(x)
#' }

```