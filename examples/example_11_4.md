# Description
Use a faster hashing algorithm (sha256) for hashing provided data fields.

# Code
```
library(sodium)
# Example data
data <- list(
  first_name = c('Jane', 'Joe', 'Raoul'),
  last_name = c('Doe', 'Smith', 'Dupont'),
  age = c(25, 69, 36)
)
# Function to hash names
hash_names <- function(..., size = 6, full = TRUE, hashfun = 'secure', salt = NULL, clean_labels = TRUE) {
  args <- list(...)
  if (clean_labels) {
    # Clean labels here if needed
  }
  combined <- sapply(args, paste, collapse = '_')
  hash <- switch(hashfun,
    'secure' = sapply(combined, scrypt, salt = salt),
    'fast' = sapply(combined, sha256),
    stop('Unknown hash function'))
  # Truncate the hash if size is specified
  if (size < nchar(hash[1])) {
    hash <- substring(hash, 1, size)
  }
  # Create data frame if full output needed
  if (full) {
    df <- data.frame(original = combined, hash = hash)
    return(df)
  }
  return(hash)
}
hash_names(first_name, last_name, hashfun = "fast") # use sha256 algorithm

```