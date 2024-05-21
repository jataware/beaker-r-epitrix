# Description
Calculate the attack rate for a specific value of the reproduction number

# Code
```
## Required imports and definitions
R02AR <- function(R0, tol = 0.01) {
  AR <- -log(1 - R0)/R0
  return(AR)
}
## Calculate the attack rate for a specific value of the reproduction number
R02AR(2) # returns the AR for an R0 of 2

```