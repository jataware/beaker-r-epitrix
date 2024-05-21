# Description
Standardize a single label with a period (.) as the separator.

# Code
```
library(stringi)
clean_labels("-_-This is; A    WeÏrD**./sêntënce...", sep = ".")

```