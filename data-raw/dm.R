# load packages
library(dm)
library(fec16) # includes the states df (fec16 >v0.1.2)

# create bare-bones dm object
fec16_dm_no_keys <- dm(
  candidates, committees, campaigns,
  results_house, results_president, results_senate,
  pac, states, transactions,
  expenditures, contributions
)

# add primary keys
fec16_dm_only_pks <-
  fec16_dm_no_keys %>%
  dm_add_pk(table = candidates, columns = cand_id) %>%
  dm_add_pk(committees, cmte_id) %>%
  dm_add_pk(states, state)

# add foreign keys
fec16_dm_all_keys <-
  fec16_dm_only_pks %>%
  dm_add_fk(table = campaigns, columns = cand_id, ref_table = candidates) %>%
  dm_add_fk(pac, cmte_id, committees) %>%
  dm_add_fk(results_house, cand_id, candidates) %>%
  dm_add_fk(results_house, state, states) %>%
  dm_add_fk(results_president, cand_id, candidates) %>%
  dm_add_fk(results_president, state, states) %>%
  dm_add_fk(results_senate, cand_id, candidates) %>%
  dm_add_fk(results_senate, state, states) %>%
  dm_add_fk(committees, cand_id, candidates) %>%
  dm_add_fk(candidates, cand_office_st, states) %>%
  dm_add_fk(candidates, cand_st, states) %>%
  dm_add_fk(committees, cmte_st, states) %>%
  dm_add_fk(expenditures, cmte_id, committees) %>%
  dm_add_fk(transactions, cmte_id, committees) %>%
  dm_add_fk(contributions, cmte_id, committees) %>%
  dm_add_fk(contributions, other_id, committees) %>%
  dm_add_fk(contributions, cand_id, candidates) %>%
  dm_add_fk(expenditures, state, states) %>%
  dm_add_fk(contributions, state, states) %>%
  dm_add_fk(transactions, state, states)

# visualise relationship
visual <- fec16_dm_all_keys %>%
  dm_draw()

# save as jpeg in /inst
htmlwidgets::saveWidget(visual, "fec16-dm.html")
webshot::webshot("fec16-dm.html", "inst/fec16-dm.jpeg", vwidth = 50, vheight = 100)
