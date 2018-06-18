cum_data <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(1 and 2) DAFF manure/first experiment/results and calculations/stats/cum_data_exp1.csv")

## N2O vs. NH4+
# linear model
NH4_d <- lm(cum_data$N2O_total ~ cum_data$NH4_d)
summary(NH4_d)
# correlation coefficient (r)
cor.test(cum_data$NH4_d, cum_data$N2O_total)


## N2O vs. NO3-
# linear model
NO3_d <- lm(cum_data$N2O_total ~ cum_data$NO3_d)
summary(NO3_d)
# correlation coefficient (r)
cor.test(cum_data$NO3_d, cum_data$N2O_total)


## N2O vs. microbial activity
# linear model
MA_d <- lm(cum_data$N2O_total ~ cum_data$MA_d)
summary(MA_d)
# correlation coefficient (r)
cor.test(cum_data$MA_d, cum_data$N2O_total)


## N2O vs. microbial biomass N
# linear model
MB_d <- lm(cum_data$N2O_total ~ cum_data$MB_d)
summary(MB_d)
# correlation coefficient (r)
cor.test(cum_data$MB_d, cum_data$N2O_total)