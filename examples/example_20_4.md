# Description
Converting a growth rate to a reproduction number (R0)

# Code
```
```r
library(epitrix)
library(outbreaks)
library(incidence)
```

library(outbreaks)
library(incidence)
i <- incidence(ebola_sim$linelist$date_of_onset)
i
f <- fit(i[1:150]) # fit on first 150 days
plot(i[1:200], fit = f, color = "#9fc2fc")

r2R0(f$info$r, si$d(1:100))
r2R0(f$info$r.conf, si$d(1:100))

```