# Description
Simulating delays using distcrete and visualizing with a histogram

# Code
```
```r
library(epitrix)
library(distcrete)
```
```{r si}

si <- distcrete::distcrete("gamma", interval = 1,
               shape = param$shape,
               scale = param$scale, w = 0)
si
set.seed(1)
x <- si$r(500)
head(x, 10)
hist(x, col = "grey", border = "white",
     xlab = "Days between primary and secondary onset",
     main = "Simulated serial intervals")

```