library(tidyverse)
load("rda/jodidata.rda")


jodidata %>%  ggplot() + geom_line(aes(TIME_PERIOD, OBS_VALUE, group = UNIT_MEASURE),  color = "grey50" )


