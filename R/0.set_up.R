# Generic settings that are used by all project related scripts. 

# The root directory for the project. 
BASE_DIR <- here::here()

# Define which version of Hector should be used here! 
HECTOR_VERSION <-  "3.2.0"
library(hector)
stopifnot(packageVersion("hector") == HECTOR_VERSION)


param_rda <- file.path(BASE_DIR, "output", "calibration-diff_beta_q10-Tue_Feb_13_09:57:15_2024.rda")
nat_emiss_rda <- file.path(BASE_DIR, "output", "calibration-natemissions-Tue_Feb_13_09:53:00_2024.rda")

if(!file.exists(param_rda)){
  message("FYI: missing calibrated params")
}


if(!file.exists(nat_emiss_rda)){
  message("FYI: missing calibrated natural emissions")
}

load(param_rda)
load(nat_emiss_rda)


# set up the environment 
library(assertthat)
library(data.table)
library(dplyr)
library(ggplot2)
library(readr)
library(readxl)
library(tidyr)
library(zoo)





