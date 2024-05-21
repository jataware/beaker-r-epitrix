# Description
Calculate the herd immunity threshold for a specific value of the reproduction number (here 2).

# Code
```
R02herd_immunity_threshold <- function(R0) { return(1 - 1 / R0) }
R02herd_immunity_threshold(2) 

```