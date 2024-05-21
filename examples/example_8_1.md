# Description
Calculate R0 for an attack rate of 50%

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
#' ## Calculate R0 for an attack rate of 50%
#' AR2R0(0.5)

```