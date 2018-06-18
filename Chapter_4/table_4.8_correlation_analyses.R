daily_row <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(3) field experiment/stats/daily data/field_exp_daily_data_row_final.csv")

## separating data by treatment
urea <- subset(daily_row, daily_row$treatment == "T1")
control <- subset(daily_row, daily_row$treatment == "T5")
PM <- subset(daily_row, daily_row$treatment == "T6")
BE <- subset(daily_row, daily_row$treatment == "T7")
BC <- subset(daily_row, daily_row$treatment == "T8")
CO <- subset(daily_row, daily_row$treatment == "T9")

## correlation analyses, NH4+
cor.test(control$NH4_ln, control$N2O_ln)
cor.test(urea$NH4_ln, urea$N2O_ln)
cor.test(PM$NH4_ln, PM$N2O_ln)
cor.test(BE$NH4_ln, BE$N2O_ln)
cor.test(BC$NH4_ln, BC$N2O_ln)
cor.test(CO$NH4_ln, CO$N2O_ln)

## correlation analyses, NO3-
cor.test(control$NO3_ln, control$N2O_ln)
cor.test(urea$NO3_ln, urea$N2O_ln)
cor.test(PM$NO3_ln, PM$N2O_ln)
cor.test(BE$NO3_ln, BE$N2O_ln)
cor.test(BC$NO3_ln, BC$N2O_ln)
cor.test(CO$NO3_ln, CO$N2O_ln)