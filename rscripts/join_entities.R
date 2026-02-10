library(tidyverse)
library(janitor)
library(here)
library(rio)

sample_data = import(here("data-clean/sample_data.csv"))
entities = import(here("data-raw/052025_GRH_EntitiesFile_2024-2025.csv"))

#TODO Clean the variable names in the entities file and select the following: FinalDistrictName, houston MSA flag, district size

#TODO Join the cleaned up entities file to the sample data

#TODO Filter the entities file to just KIPP Houston or Houston ISD (ML)

tabyl(entities, FinalDistrictName)
entities <- entities %>% 
  filter(FinalDistrictName == "HOUSTON ISD")
