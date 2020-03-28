library(ggplot2)
library(tidyverse)


df <- read.csv('covid19_trat.csv')
df$date <- as.Date(df$date)

plot(df$date, df$confirmed)
data <- df$date
confir <- df$confirmed

ser <- data.frame(data,confir)

ggplot(data = ser) +
  geom_bar(aes(x=data))


