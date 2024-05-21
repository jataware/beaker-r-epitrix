# Description
Fast hashing of provided data fields.

# Code
```
library(sodium)
hash_names <- function(..., size = 6, full = TRUE, hashfun = "secure", salt = NULL, clean_labels = TRUE) {
  x <- list(...)
  x <- lapply(x, function(e) paste(unlist(e)))

  if (clean_labels) {
    x <- lapply(x, clean_labels, sep = "")
  }
  paste_ <- function(...) paste(..., sep = "_")
  lab <- do.call(paste_, x)


  hashfun <- hash(salt, f = hashfun)
  hash <- vapply(lab, hashfun, NA_character_)
  hash_short <- substr(hash, 1, size)

  if (full) {
    out <- data.frame(label = lab,
                      hash_short = hash_short,
                      hash = hash,
                      stringsAsFactors = FALSE)
    row.names(out) <- NULL
  } else {
    out <- unname(hash_short)
  }
  return(out)
}

hash <- function(salt = NULL, f = sodium::scrypt) {
  if (is.character(f)) {
    f <- match.arg(tolower(f), c("secure", "fast"))
    f <- if (f == "secure") sodium::scrypt else sodium::sha256
  }
  if (any(names(formals(f)) == "salt")) {
    stopifnot(is.null(salt) || length(salt) == 1L)
    salt <- if (is.null(salt)) {
      raw(32L)
    } else {
      sodium::hash(charToRaw(as.character(salt)))
    }
    function(x) {
      stopifnot(is.character(x))
      sodium::bin2hex(f(charToRaw(x), salt = salt))
    }
  } else {
    function(x, s = salt) {
      x <- if (is.null(s)) x else paste(x, s, sep = "_")
      stopifnot(is.character(x))
      sodium::bin2hex(f(charToRaw(x)))
    }
  }
}
#' # fast hashing
#' hash_names(first_name, last_name, age,
#'            size = 8, full = FALSE, hashfun = "fast")

```