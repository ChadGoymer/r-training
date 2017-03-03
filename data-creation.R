library(tibble)
library(readr)

NoSynds <- 5
NoYoA <- 3

TechnicalProvisions <- tibble(
  Synd         = rep(1:NoSynds, each = NoYoA),
  YoA          = rep(2018L - 1:NoYoA, times = NoSynds),
  GrossPremium = rnorm(n = NoSynds * NoYoA, mean = 1e6, sd = 1e5),
  NetPremium   = runif(n = NoSynds * NoYoA, min = 0.6, max = 0.9) * GrossPremium)

write_csv(TechnicalProvisions, "data/TechnicalProvisions.csv")
write_rds(TechnicalProvisions, "data/TechnicalProvisions.rds")
