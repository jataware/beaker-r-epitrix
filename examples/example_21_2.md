# Description
Compute and visualize empirical incubation period distribution.

# Code
```
```{r, echo = TRUE, message=FALSE}
library(magrittr)
library(epitrix)
library(distcrete)
library(ggplot2)
```
```{r}
incubation_period_dist <- empirical_incubation_dist(ll, date_of_onset, dates_exposure)
print(incubation_period_dist)

ggplot(incubation_period_dist, aes(incubation_period, relative_frequency)) +
  geom_col()
```

```