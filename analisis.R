library(tidyverse)
load("rda/jodidata.rda")

By_Time_Period <- jodidata %>% group_by(TIME_PERIOD)

MAX_OBS <- summarise(By_Time_Period, OBS_VALUE = max(OBS_VALUE))
MIN_OBS <- summarise(By_Time_Period, OBS_VALUE = min(OBS_VALUE))
AVG_OBS <- summarise(By_Time_Period, OBS_VALUE = mean(OBS_VALUE))


jodidata %>%  ggplot() + geom_line(aes(TIME_PERIOD, OBS_VALUE, group = 1)) + 
  geom_line(mapping = aes(TIME_PERIOD, OBS_VALUE, group = 1),  data = AVG_OBS, size = 1, color = "red") + geom_line(mapping = aes(TIME_PERIOD, OBS_VALUE, group = 1),data = MIN_OBS, size = 1, color = "red") +  geom_line(mapping = aes(TIME_PERIOD, OBS_VALUE, group = 1), data = MAX_OBS, size = 1, color = "black") + geom_line(mapping = aes(TIME_PERIOD, OBS_VALUE, group = 1),data = MIN_OBS, size = 1, color = "blue")

AVG_OBS %>% ggplot() + geom_line(mapping = aes(TIME_PERIOD, OBS_VALUE, group = 1), size = 1, color = "red") + labs(x = "a la fecha", y = "Cantidad en MM3",title ="Prom. Extracción gas nivel mundial")

ggsave("plots/PromedioJodi.png")
