#How to use the pipe

mpg %>%
  distinct(manufacturer) %>%
  count()