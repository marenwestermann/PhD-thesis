biomass_end <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(3) field experiment/stats/biomass/biomass_final.csv")

anova_biomass <- aov(biomass_end$biomass ~ biomass_end$treatment)
summary(anova_biomass)
pairwise.t.test(log(biomass_end$biomass), biomass_end$treatment, p.adjust = "none")