library(tidyverse)

states <- tibble(
  state = state.abb,
  state_name = state.name,
  state_region = as.character(state.region),
  state_division = as.character(state.division)
)

usethis::use_data(states, overwrite = TRUE)
