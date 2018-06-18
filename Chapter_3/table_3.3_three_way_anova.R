cum_data <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(1 and 2) DAFF manure/first experiment/results and calculations/stats/cum_data_exp1_control_subtr.csv")

anova_N2O <- aov(N2O ~ soil*manure*bentonite, data = cum_data)
summary(anova_N2O)