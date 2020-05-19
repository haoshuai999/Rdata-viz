library(tidyverse)
load("D:/1VDR/emotion-project/esDataF.Rdata")
es_tibble <- as_tibble(esDataF)
write_csv(es_tibble, "D:/1VDR/emotion-project/df.csv")
es_subset <- es_tibble %>% 
  select(-ends_with(".low"), -ends_with(".high"))
save(es_subset, file = "D:/1VDR/emotion-project/es_subset.Rdata")
