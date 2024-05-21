# Description
Create a linelist object containing toy data with several possible exposure dates for each case.

# Code
```
```{r, echo = TRUE, message=FALSE}
library(magrittr)
library(epitrix)
library(distcrete)
library(ggplot2)
```
```{r, echo = TRUE}
ll <- sim_linelist(15)

x <- 0:15
y <- distcrete("gamma", 1, shape = 12, rate = 3, w = 0)$d(x)
mkexposures <- function(i) {
  i - sample(x, size = sample.int(5, size = 1), replace = FALSE, prob = y)
}
exposures <- sapply(ll$date_of_onset, mkexposures)
ll$dates_exposure <- exposures

print(ll)
```

```