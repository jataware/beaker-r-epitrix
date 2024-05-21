# Description
Standardize and appropriately transliterate Germanic umlauts when having the correct ICU version installed.

# Code
```
library(stringi)
if (stringi::stri_info()$ICU.system) {
  # This will only be true if you have the correct version of ICU installed

  clean_labels("'é', 'ê' and 'è' become 'e', 'ö' becomes 'oe', etc.", 
               transformation = "Any-Latin; de-ASCII; Latin-ASCII")

```