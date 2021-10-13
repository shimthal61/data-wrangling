#Our dataset is wide (multiple observations per row)
my_wide_data <- read_csv("https://raw.githubusercontent.com/ajstewartlang/03_data_wrangling/master/data/my_wide_data.csv")

head(my_wide_data)

my_longer_data <- my_wide_data %>%
  #Specify the names of the conditions you want to make longer
  pivot_longer(cols = c(Condition1, Condition2, Condition3, Condition4),
               #Change the name of the superordinate column
               names_to = "Condition",
               #Change the name of the values
               values_to = "RT") %>%
  mutate(Condition = factor(Condition))

#Making our dataset wide again
my_wider_data <- my_longer_data %>%
  #Specify what variables we want as our new columns
  pivot_wider(names_from = "Condition",
              #Specify what variables we want as our new data
              values_from = "RT")

head(my_wider_data)
