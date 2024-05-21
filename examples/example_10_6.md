# Description
Standardize labels while protecting punctuation and spaces.

# Code
```
library(stringi)
clean_labels(input, protect = "[:punct:][:space:]")

```