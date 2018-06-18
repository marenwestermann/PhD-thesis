total_gases <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(3) field experiment/stats/gases total/field_exp_gases_total.csv")


##N2O
anova_N2O <- aov(total_gases$N2O_ln ~ total_gases$treatment)
summary(anova_N2O)
pairwise.t.test(total_gases$N2O_ln, total_gases$treatment, p.adjust = "none")
describeBy(total_gases$N2O_kg_per_ha, total_gases$treatment)


##CO2
anova_CO2 <- aov(total_gases$CO2_ln ~ total_gases$treatment)
summary(anova_CO2)
pairwise.t.test(total_gases$CO2_ln, total_gases$treatment, p.adjust = "none")
describeBy(total_gases$CO2_kg_per_ha, total_gases$treatment)


##CH4
anova_CH4 <- aov(log(total_gases$CH4_kg_per_ha) ~ total_gases$treatment)
summary(anova_CH4)
pairwise.t.test(log(total_gases$CH4_kg_per_ha), total_gases$treatment, p.adjust = "none")
describeBy(total_gases$CH4_kg_per_ha, total_gases$treatment)


##CO2-eq
anova_CO2_eq <- aov(total_gases$CO2_eq_total_t_per_ha_ln ~ total_gases$treatment)
summary(anova_CO2_eq)
pairwise.t.test(total_gases$CO2_eq_total_t_per_ha_ln, total_gases$treatment, p.adjust = "none")
describeBy(total_gases$CO2_eq_total_t_per_ha, total_gases$treatment)