# Description
Standardize labels while protecting specific symbols (>, <).

# Code
```
library(stringi)
clean_labels(c("energy > 9000", "energy < 9000"), protect = "><")

```