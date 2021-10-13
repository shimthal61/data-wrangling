my_messy_data <- read_csv("https://raw.githubusercontent.com/ajstewartlang/03_data_wrangling/master/data/my_data.csv")

head(my_messy_data)

#Recode our four conditions
my_messy_data %>%
  mutate(condition = recode(condition,
                            "1" = "PrimeA_TargetB",
                            "2" = "PrimeA_TargetB",
                            "3" = "PrimeB_TargetA",
                            "4" = "PrimeB_TargetB")) %>%

#Separating our condition columns
  separate(col = "condition", into = c("Prime", "Target"), sep = "_") %>%

#Mutate our condition columns into factors
  mutate(Prime = factor(Prime), Target = factor(Target))