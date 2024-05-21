# Description
Fit a discrete gamma distribution to a set of incubation periods derived from exposure and onset dates.

# Code
```
random_dates <- as.Date("2020-01-01") + sample(0:30, 50, replace = TRUE)
x <- data.frame(date_of_onset = random_dates)

mkexposures <- function(x) x - round(rgamma(sample.int(5, size = 1), shape = 12, rate = 3))
exposures <- sapply(x$date_of_onset, mkexposures)
x$date_exposure <- exposures
random_dates <- as.Date("2020-01-01") + sample(0:30, 50, replace = TRUE)
x <- data.frame(date_of_onset = random_dates)

mkexposures <- function(x) x - round(rgamma(sample.int(5, size = 1), shape = 12, rate = 3))
exposures <- sapply(x$date_of_onset, mkexposures)
x$date_exposure <- exposures

fit <- fit_gamma_incubation_dist(x, date_of_onset, date_exposure)
plot(0:20, fit$distribution$d(0:20),
     type = "h", lwd = 10, lend = 2, col = "#49D193",
     xlab = "Days since exposure",
     ylab = "Probability",
     main = "Incubation time distribution")

```