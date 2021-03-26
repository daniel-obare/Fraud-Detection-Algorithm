require(magrittr)
require(tidyr)
require(dplyr)
require(lubridate)

train <- invoice_train %>%  select(3,5,7:16) %>% mutate(tarif_type = factor(tarif_type)) %>% 
  mutate(counter_statue = factor(counter_statue)) %>% mutate(reading_remarque = factor(reading_remarque)) %>% 
  mutate(counter_type = factor(counter_type))

trn_client = client_train %>% mutate(creation_date = dmy(creation_date)) %>% 
  mutate(target = factor(target)) %>% mutate(client_catg = factor(client_catg)) %>% 
  mutate(disrict = factor(disrict)) %>% mutate(region = factor(region))

y = trn_client[ ,6]
x =  train[ ,c(3,9:12)]




