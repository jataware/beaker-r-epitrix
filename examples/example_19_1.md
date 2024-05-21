# Description
Calculate R0 for an attack rate of 50%

# Code
```
AR2R0 <- function(AR) {
  return(-log(1 - AR) / AR)
}
## Calculate R0 for an attack rate of 50\%
AR2R0(0.5)

```