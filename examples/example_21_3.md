# Description
Fit and visualize a discrete gamma distribution for the incubation period.

# Code
```
```{r, echo = TRUE, message=FALSE}
library(magrittr)
library(epitrix)
library(distcrete)
library(ggplot2)
```
```{r}
fit <- fit_gamma_incubation_dist(ll, date_of_onset, dates_exposure)
print(fit)

x = c(0:10)
y = fit$distribution$d(x)
ggplot(data.frame(x = x, y = y), aes(x, y)) +
  geom_col(data = incubation_period_dist, aes(incubation_period, relative_frequency)) +
  geom_point(stat="identity", col = "red", size = 3) +
  geom_line(stat="identity", col = "red")
```

```