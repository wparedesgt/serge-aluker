library(tidyverse)
load("rda/jodidata.rda")

By_Time_Period <- jodidata %>% group_by(TIME_PERIOD)

SUM_OBS <- summarise(By_Time_Period, OBS_VALUE = sum(OBS_VALUE))

AVG_OBS <- summarise(By_Time_Period, OBS_VALUE = mean(OBS_VALUE))

jodidata %>%  ggplot() + geom_line(aes(TIME_PERIOD,OBS_VALUE,group = 1 ),show.legend = FALSE, alpha = 0.2, size = 1) + geom_line(mapping = aes(TIME_PERIOD, OBS_VALUE, group = 1),  data = AVG_OBS, size = 1, color = "black")

AVG_OBS %>% ggplot() + geom_line(mapping = aes(TIME_PERIOD, OBS_VALUE, group = 1),  data = AVG_OBS, size = 1, color = "black")

