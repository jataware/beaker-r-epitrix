# Description
Generate a linelist with a list column of potential exposure dates and compute the empirical incubation distribution from it.

# Code
```
library(tibble)
library(dplyr)
library(rlang)
library(tidyr)
#' if (require(tibble)) {
#' random_dates <- as.Date("2020-01-01") + sample(0:30, 50, replace = TRUE)
#' x <- tibble(date_of_onset = random_dates)
#'
#' # Linelist with a list column of potential exposure dates ------------------
#' mkexposures <- function(x) x - round(rgamma(sample.int(5, size = 1), shape = 12, rate = 3))
#' exposures <- sapply(x$date_of_onset, mkexposures)
#' x$date_exposure <- exposures
#'
#' incubation_period_dist <- empirical_incubation_dist(x, date_of_onset, date_exposure)
#' incubation_period_dist

```