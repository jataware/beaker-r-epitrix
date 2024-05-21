# Description
Converting mean and standard deviation to the parameters of a Gamma distribution

# Code
```
```r
library(epitrix)
```
```{r generate_data}
library(epitrix)

mu <- 15.3 # mean in days days
sigma <- 9.3 # standard deviation in days
cv <- sigma / mu # coefficient of variation
cv
param <- gamma_mucv2shapescale(mu, cv) # convertion to Gamma parameters
param

```