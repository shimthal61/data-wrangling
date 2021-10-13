#We filter for "honda" and "1999", then select info from 4 of the columns
mpg %>%
  filter(manufacturer == "honda" & year == "1999") %>%
  select(manufacturer, year, cty, hwy)