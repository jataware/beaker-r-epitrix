# Description
Generating samples of R0 values compatible with a model fit

# Code
```
```r
library(epitrix)
```
R0_val <- lm2R0_sample(f$model, si$d(1:100), n = 100)
head(R0_val)
hist(R0_val, col = "grey", border = "white")

```