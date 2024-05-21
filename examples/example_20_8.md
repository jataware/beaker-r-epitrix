# Description
Generating hashed labels from linelist data

# Code
```
```r
library(epitrix)
library(sodium)
```
first_name <- c("Jane", "Joe", "Raoul", "Raoul")
last_name <- c("Doe", "Smith", "Dupont", "Dupond")
age <- c(25, 69, 36, 36)

## detailed output by default
hash_names(first_name, last_name, age)

## short labels for practical use, using a faster (but less secure) algorithm
hash_names(first_name, last_name, age,
           size = 8, full = FALSE, hashfun = sodium::sha256)

## adding a salt for extra security
hash_names(first_name, last_name, age,
           salt = "Keep it secret")

```