# Description
Generate a linelist with exposure range and compute the empirical incubation distribution, then plot it.

# Code
```
library(tibble)
library(dplyr)
library(rlang)
library(tidyr)
#' # Linelist with exposure range ---------------------------------------------
#' start_exposure   <- round(rgamma(nrow(x), shape = 12, rate = 3))
#' end_exposure     <- round(rgamma(nrow(x), shape = 12, rate = 7))
#' x$exposure_end   <- x$date_of_onset - end_exposure
#' x$exposure_start <- x$exposure_end - start_exposure
#' incubation_period_dist <- empirical_incubation_dist(x, date_of_onset, exposure_start, exposure_end)
#' incubation_period_dist
#' plot(incubation_period_dist,
#'      type = "h", lwd = 10, lend = 2, col = "#49D193",
#'      xlab = "Days since exposure",
#'      ylab = "Probability",
#'      main = "Incubation time distribution")

```