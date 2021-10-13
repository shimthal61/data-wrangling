#Making the variables in a column title case
mpg %>%
  mutate(manufacturer = str_to_title(manufacturer),
         model = str_to_title(model),
         trans = str_to_title(trans)) %>%
  select(manufacturer, model, year, trans)