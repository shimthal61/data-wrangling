#Filter our database by one variable
mpg %>%
  filter(manufacturer == "honda")

#Filter our database by one variable OR another
mpg %>%
  filter(manufacturer == "honda" | manufacturer == "toyota")

#Filter out database by one variable AND another
mpg %>%
  filter(manufacturer == "honda" & year == "1999")
