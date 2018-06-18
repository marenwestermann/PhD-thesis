gases_total <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(4) GHG monitoring experiment Toowoomba/gases_total.csv")

##N2O
anova_N2O_kg <- aov(gases_total$N2O_N_kg ~ gases_total$treatment)
summary(anova_N2O_kg)
pairwise.t.test(gases_total$N2O_N_kg, gases_total$treatment, p.adjust = "none")
describeBy(gases_total$N2O_N_kg, gases_total$treatment)

##CO2
anova_CO2_kg <- aov(gases_total$CO2_C_kg ~ gases_total$treatment)
summary(anova_CO2_kg)
pairwise.t.test(gases_total$CO2_C_kg, gases_total$treatment, p.adjust = "none")
describeBy(gases_total$CO2_C_kg, gases_total$treatment)

##CH4
anova_CH4_kg <- aov(gases_total$CH4_C_kg ~ gases_total$treatment)
summary(anova_CH4_kg)
pairwise.t.test(gases_total$CH4_C_kg, gases_total$treatment, p.adjust = "none")
describeBy(gases_total$CH4_C_kg, gases_total$treatment)