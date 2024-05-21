# Description
Plot the relationship between R0 and attack rate

# Code
```
AR2R0 <- function(AR) {
    if (any(AR < 0 | AR > 1)) {
      stop("AR should contain numeric values between 0 and 1")
    }
    R0 <- rep(NA, length(AR))
    R0[AR == 0] <- 0
    R0[AR == 1] <- Inf
    non_0_1 <- AR > 0 & AR < 1
    R0[non_0_1] <- - log(1 - AR[non_0_1]) / AR[non_0_1]
    return(R0)
}

R02AR <- function(R0, tol = 0.01) {
  if (any(R0 < 0)) {
    stop("R0 should contain numeric values >= 0")
  }
  if(length(tol) > 1) stop("tol must be a single numeric value")
  if(tol <= 0) stop("tol must be > 0.")
  AR_grid <- seq(0, 1, tol)
  R0_grid <- AR2R0(AR_grid)
  AR_idx <- vapply(R0, function(e) which.min(abs(R0_grid - e)), 1)
  AR <- AR_grid[AR_idx]
  AR[R0 == 0] <- 0
  AR[R0 == Inf] <- 1
  return(AR)
}
#' ## plot the relationship between R0 and attack rate
#' x <- seq(1.01, 5, 0.01)
#' plot(x, R02AR(x), type = "l", xlab = "R0", ylab = "Attack rate")

```