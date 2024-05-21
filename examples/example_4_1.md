# Description
Calculate the basic reproduction number (R0) from a range of growth rates for Ebola estimates by using a serial interval distribution and transform those growth rates using `r2R0`.

# Code
```
import numpy as np
from scipy.stats import gamma
import matplotlib.pyplot as plt

# Define the gamma distribution parameters
def gamma_mucv2shapescale(mu, cv):
    shape = 1 / (cv ** 2)
    scale = mu * (cv ** 2)
    return {'shape': shape, 'scale': scale}

# Check if required packages are available
def require(package_name):
    try:
        __import__(package_name)
        return True
    except ImportError:
        return False
#' mu <- 15.3 # days
#' sigma <- 9.3 # days
#' param <- gamma_mucv2shapescale(mu, sigma / mu)
#'
#' if (require(distcrete)) {
#'   w <- distcrete("gamma", interval = 1,
#'                  shape = param$shape,
#'                  scale = param$scale, w = 0)
#'
#'   r2R0(c(-1, -0.001, 0, 0.001, 1), w)

```