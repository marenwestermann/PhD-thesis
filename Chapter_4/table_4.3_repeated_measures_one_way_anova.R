daily_row_final_130 <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(3) field experiment/stats/daily data/field_exp_daily_data_row_final_130d.csv")

## conversion of the samping day to a categorical variable
daily_row_final_130$sampling_day <- factor(daily_row_final_130$sampling_day)

##NH4+
aov_NH4_final <- aov(daily_row_final_130$NH4_ln ~ daily_row_final_130$treatment + 
                     Error(daily_row_final_130$sampling_day/daily_row_final_130$treatment))
summary(aov_NH4_final)
with(daily_row_final_130, pairwise.t.test(daily_row_final_130$NH4_ln, daily_row_final_130$treatment, 
                                          p.adjust = "none", paired = T))
describeBy(daily_row_final_130$NH4, daily_row_final_130$treatment)

##NO3-
aov_NO3_final <- aov(daily_row_final_130$NO3_ln ~ daily_row_final_130$treatment + 
                     Error(daily_row_final_130$sampling_day/daily_row_final_130$treatment))
summary(aov_NO3_final)
with(daily_row_final_130, pairwise.t.test(daily_row_final_130$NO3_ln, daily_row_final_130$treatment, 
                                          p.adjust = "none", paired = T))
describeBy(daily_row_final_130$NO3, daily_row_final_130$treatment)