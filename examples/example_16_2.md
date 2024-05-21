# Description
Plot the relationship between R0 and herd immunity threshold.

# Code
```
R02herd_immunity_threshold <- function(R0) { return(1 - 1 / R0) }
# Load necessary library for plotting
library(ggplot2)
x <- seq(1.01, 15, 0.01)
plot(x, R02herd_immunity_threshold(x), type = "l", 
  xlab = "R0", ylab = "Herd immunity threshold")

```