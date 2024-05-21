# Description
Plot the relationship between R0 and herd immunity threshold

# Code
```
R02herd_immunity_threshold <- function(R0) {
  if (any(R0 < 0)) {
    stop("R0 should contain numeric values >= 0")
  }
  out <- rep(NA, length(R0))
  out[R0 <= 1] <- 0
  out[R0 == Inf] <- 1
  all_other_values <- R0 > 1 & R0 < Inf
  out[all_other_values] <- 1 - 1 / R0[all_other_values]
  return(out)
}
#' ## plot the relationship between R0 and herd immunity threshold
#' x <- seq(1.01, 15, 0.01)
#' plot(x, R02herd_immunity_threshold(x), type = "l", 
#'   xlab = "R0", ylab = "Herd immunity threshold")

```