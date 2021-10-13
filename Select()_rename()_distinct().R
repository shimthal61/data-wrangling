#Select one of the columns
mpg %>%
  select(manufacturer)

#Rename a column
mpg %>%
  rename(Producer = manufacturer)

#Find Unique values in a column
mpg %>%
  distinct(manufacturer)