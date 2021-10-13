individual_diffs <- read_csv("https://raw.githubusercontent.com/ajstewartlang/03_data_wrangling/master/data/individual_diffs.csv")

head(individual_diffs)

#combining the two tibbles by a specific row
combined_data <- full_join(my_longer_data, individual_diffs,
                           #Join them by the row 'ID
                           by = "ID")

#Combining the two tibbles by a specific row, ONLY if there is a match
large_individual_diffs <- read_csv("https://raw.githubusercontent.com/ajstewartlang/03_data_wrangling/master/data/large_ind_diffs.csv")
combined_data_2 <- left_join(my_longer_data, large_individual_diffs, by = "ID")