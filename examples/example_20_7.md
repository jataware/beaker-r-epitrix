# Description
Protecting specific characters while standardising labels

# Code
```
```r
library(epitrix)
```
vars <- c("Death in Structure  > 4h", "death in Structure < 4h")
clean_labels(vars, protect = "><")

```