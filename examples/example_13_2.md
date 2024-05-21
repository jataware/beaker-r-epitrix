# Description
Generating a sample of R0 values from a log-linear regression of incidence data 
using the `lm2R0_sample` function, based on a simulated Ebola outbreak model.

# Code
```
```r
library(distcrete)
library(outbreaks)
library(incidence)
lm2R0_sample <- function(x, w, n = 100, trunc = 1000) {
  # function definition
}
```
## Use simulated Ebola outbreak and 'incidence' to get a log-linear
## model of daily incidence.

  if (require(outbreaks) && require(incidence)) {
    i <- incidence(ebola_sim$linelist$date_of_onset)
    plot(i)
    f <- fit(i[1:100])
    f
    plot(i[1:150], fit = f)

    R0 <- lm2R0_sample(f$model, w)
    hist(R0, col = "grey", border = "white", main = "Distribution of R0")
    summary(R0)

```