# Description
Standardising labels with clean_labels function

# Code
```
```r
library(epitrix)
```
x <- " Thîs- is A   wêïrD LäBeL .."
x
clean_labels(x)

variables <- c("Date.of.ONSET ",
               "/  date of hôspitalisation  /",
               "-DäTÈ--OF___DîSCHARGE-",
               "GEndèr/",
               "  Location. ")
variables
clean_labels(variables)

```