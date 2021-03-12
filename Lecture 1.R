install.packages("tidyverse")
library(readr)
rats <- read_csv("crd_rats_data.csv")
library(tidyverse)

rats %>%
  group_by(Surgery) %>%
  summarise(avg = mean(logAUC))

# interm of getting the statistics aov() is the same as an fitting an linear model for getting the F model. lm calls AOV in the background. 

# But the linear model gives you abit more information info out put. 

rats_aov <- lm(logAUC ~ Surgery, data = rats)
summary(rats_aov)

rats_aov <- aov(logAUC ~ Surgery, data = rats)
summary(rats_aov)

## notice the different stats we get out of the data

## What is the issue
# we have evidence that at least one is different but what one is different!! we want to know which one is differnt . This is were the lm model is more useful than the aov


# 
