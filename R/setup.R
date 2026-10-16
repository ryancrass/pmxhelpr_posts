# Shared setup sourced by every post. Loads packages and builds the example
# datasets derived from pmxhelpr::data_sad so all posts use identical inputs.

options(scipen = 999)

library(tidyverse)
library(patchwork)
library(mrgsolve)
library(gt)
library(pmxhelpr)

# Observation-only PK records, fasted, used by the plot_dvtime() posts.
plot_data <- data_sad %>%
  filter(EVID == 0, CMT %in% c(1, 2), FOOD == 0) %>%
  rename(DV = ODV) %>%
  mutate(Dose = var_addn(DOSE, ID, sep = "mg"))

# Dose and observation PK records, fasted, used as simulation input by the
# VPC posts (dosing records are required by df_mrgsim_replicate()).
data_sad_pk <- data_sad %>%
  filter(CMT %in% c(1, 2)) %>%
  filter(FOOD == 0) %>%
  rename(DV = ODV) %>%
  mutate(Dose = var_addn(DOSE, ID, sep = "mg"))
