# Description
Extracting the empirical incubation period distribution from linelist data with 
 single exposure dates.

# Code
```
```R
# Required libraries and definitions
if (!requireNamespace("tibble", quietly = TRUE)) {
  install.packages("tibble")
}
library(tibble)

empirical_incubation_dist <- function(x, date_of_onset, exposure, exposure_end = NULL) {
  # Dummy function to mimic the functionality of the real function
  # This should be replaced with the actual function's implementation
  # Here we just create a dummy data frame a placeholder
  data.frame(incubation_period = rnorm(100, 5, 1), frequency = abs(rnorm(100)))
}
```
if (require(tibble)) {
random_dates <- as.Date("2020-01-01") + sample(0:30, 50, replace = TRUE)
x <- tibble(date_of_onset = random_dates)

# Linelist with a list column of potential exposure dates ------------------
mkexposures <- function(x) x - round(rgamma(sample.int(5, size = 1), shape = 12, rate = 3))
exposures <- sapply(x$date_of_onset, mkexposures)
x$date_exposure <- exposures

incubation_period_dist <- empirical_incubation_dist(x, date_of_onset, date_exposure)
incubation_period_dist

```