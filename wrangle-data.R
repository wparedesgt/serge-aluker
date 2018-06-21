library(tidyverse)
load("rda/jodidata.rda")

jodidata <- jodidata[order(jodidata$TIME_PERIOD), ]

save(jodidata, file = "rda/jodidata.rda")
