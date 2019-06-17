## Load packages
pkgs <- c("here", "tidyverse", "simplerspec", "future", "doFuture")
purrr::walk(pkgs, library, character.only = TRUE)

## Read OPUS files =============================================================

files_thuebingen <- dir(path = here("data", "tensor27", "thuebingen"),
  full.names = TRUE)

read_opus_univ(fnames = files_thuebingen)

## Try fixing the reader =======================================================

source(here("R", "read-opus-univ.R"))

file_path <- files_thuebingen[1]
extract <- c("spc")
print_progress <- TRUE
atm_comp_minus4offset <- FALSE


