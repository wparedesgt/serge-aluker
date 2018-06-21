library(tidyverse)

##Download Data from URL

temp <- tempfile()
jodiurl <- "https://www.jodidata.org/_resources/files/downloads/gas-data/jodi_gas_csv_beta.zip"
download.file(jodiurl, temp)
jodizip <- unzip(temp, overwrite = TRUE)
jodidata <-  read.csv(jordizip)
unlink(temp)

save(jodidata, file = "rda/jodidata.rda")







