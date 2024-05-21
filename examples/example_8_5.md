# Description
Calculate the herd immunity threshold for a specific value of the reproduction number (here 2)

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
#' ## Calculate the herd immunity threshold for a specific value of the 
#' ## reproduction number (here 2)
#' R02herd_immunity_threshold(2) 

```