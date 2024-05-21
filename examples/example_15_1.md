# Description
This example demonstrates how to use the `fit_disc_gamma` function from the `distcrete` package to fit a discretized Gamma distribution to a dataset `x` using maximum-likelihood estimation.

# Code
```
import numpy as np
from distcrete import distcrete
from fit_discrete import fit_disc_gamma

# Function to calculate shape and scale from mean and coefficient of variation
# Assuming similar function exists in fit_discrete package

def gamma_mucv2shapescale(mu, cv):
    shape = (mu / cv) ** 2
    scale = cv ** 2 / mu
    return {'shape': shape, 'scale': scale}
\examples{

## generate data

mu <- 15.3 # days
sigma <- 9.3 # days
cv <- sigma / mu
cv
param <- gamma_mucv2shapescale(mu, cv)

if (require(distcrete)) {
w <- distcrete("gamma", interval = 1,
               shape = param$shape,
               scale = param$scale, w = 0)

x <- w$r(100)
x

fit_disc_gamma(x)
}

```