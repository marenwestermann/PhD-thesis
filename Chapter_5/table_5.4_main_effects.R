bentonite_1 <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(6) NH4+ sorption experiment/stats/daily data/bentonite_1.csv")
biochar_1 <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(6) NH4+ sorption experiment/stats/daily data/biochar_1.csv")

## NH4+

# bentonite NH4+ microdialysis
lme_be_NH4_mi <- lme(NH4_mi ~ Treatment, random = ~1|day, data = bentonite_1)
anova(lme_be_NH4_mi)
summary(glht(lme_be_NH4_mi, linfct=mcp(Treatment = "Tukey")))

# bentonite NH4+ KCl extraction
lme_be_NH4_ex <- lme(NH4_ex ~ Treatment, random = ~1|day, data = bentonite_1)
anova(lme_be_NH4_ex)
summary(glht(lme_be_NH4_ex, linfct=mcp(Treatment = "Tukey")))

# biochar NH4+ microdialysis
lme_bc_NH4_mi <- lme(NH4_mi ~ Treatment, random = ~1|day, data = biochar_1)
anova(lme_bc_NH4_mi)
summary(glht(lme_bc_NH4_mi, linfct=mcp(Treatment = "Tukey")))

# biochar NH4+ KCl extraction
lme_bc_NH4_ex <- lme(NH4_ex ~ Treatment, random = ~1|day, data = biochar_1)
anova(lme_bc_NH4_ex)
summary(glht(lme_bc_NH4_ex, linfct=mcp(Treatment = "Tukey")))


## NO3-

# bentonite NO3- microdialysis
lme_be_NO3_mi <- lme(NO3_mi ~ Treatment, random = ~1|day, data = bentonite_1)
anova(lme_be_NO3_mi)
summary(glht(lme_be_NO3_mi, linfct=mcp(Treatment = "Tukey")))

# bentonite NO3- KCl extraction
lme_be_NO3_ex <- lme(NO3_ex ~ Treatment, random = ~1|day, data = bentonite_1)
anova(lme_be_NO3_ex)
summary(glht(lme_be_NO3_ex, linfct=mcp(Treatment = "Tukey")))

# biochar NO3- microdialysis
lme_bc_NO3_mi <- lme(NO3_mi ~ Treatment, random = ~1|day, data = biochar_1)
anova(lme_bc_NO3_mi)
summary(glht(lme_bc_NO3_mi, linfct=mcp(Treatment = "Tukey")))

# biochar NO3- KCl extraction
lme_bc_NO3_ex <- lme(NO3_ex ~ Treatment, random = ~1|day, data = biochar_1)
anova(lme_bc_NO3_ex)
summary(glht(lme_bc_NO3_ex, linfct=mcp(Treatment = "Tukey")))
