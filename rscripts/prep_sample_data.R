library(tidyverse)
library(janitor)
library(here)
library(rio)

sample_data = import(here("data-raw/06172025_STAAR Master_Tableau_District.csv")) %>% 
  filter(group=="all" & grade == 3 & subject=="read" & data_level=="district" & year_data==2025) %>% #1168
  select(data_level, dname, grade, subject, group, year_data, year_created, d,nm,rm) %>% distinct()


export(sample_data, here("data-clean/sample_data.csv"))
