daily_row <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(3) field experiment/stats/daily data/field_exp_daily_data_row_final.csv")

# standardised multiple linear regression analysis
model_2 <- lm(scale(daily_row$N2O_ln) ~ scale(daily_row$NH4_ln) +
              scale(daily_row$NO3_ln) + scale(daily_row$soil_temperature), na.action = na.omit)
summary(model_2)