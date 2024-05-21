# Description
Extracting the empirical incubation period distribution from linelist data with 
 a range of exposure dates and plotting the results.

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
# Linelist with exposure range ---------------------------------------------
start_exposure   <- round(rgamma(nrow(x), shape = 12, rate = 3))
end_exposure     <- round(rgamma(nrow(x), shape = 12, rate = 7))
x$exposure_end   <- x$date_of_onset - end_exposure
x$exposure_start <- x$exposure_end - start_exposure
incubation_period_dist <- empirical_incubation_dist(x, date_of_onset, exposure_start, exposure_end)
incubation_period_dist
plot(incubation_period_dist,
     type = "h", lwd = 10, lend = 2, col = "#49D193",
     xlab = "Days since exposure",
     ylab = "Probability",
     main = "Incubation time distribution")

```