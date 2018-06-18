daily_row <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(3) field experiment/stats/daily data/field_exp_daily_data_row_final.csv")

cor.test(daily_row$soil_temperature, daily_row$N2O_ln)
cor.test(daily_row$soil_moisture, daily_row$N2O_ln)
cor.test(daily_row$NH4_ln, daily_row$N2O_ln)
cor.test(daily_row$NO3_ln, daily_row$N2O_ln)
cor.test(daily_row$microbial_biomass_ln, daily_row$N2O_ln)