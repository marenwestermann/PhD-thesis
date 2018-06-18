daily_data_1 <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(6) NH4+ sorption experiment/stats/daily data/interaction_part1.csv")

daily_data_1$typeconc=interaction(daily_data_1$type,daily_data_1$conc)

## comment: when I used "typeconc" in the anova command I couldn't see in the
## output whether there is a significant interaction. The output just showed
## "Intercept" and "typeconc". However, the glht command did not accept the
## "type*conc" interaction of variables. Thus, I did a second lme model with 
## "typeconc" in it.


## NH4+

# NH4+ microdialysis
lme_NH4_mi <- lme(NH4_mi ~ type*conc, random = ~1|day, data = daily_data_1)
summary(lme_NH4_mi)
anova(lme_NH4_mi)
lme_NH4_mi_2 <- lme(NH4_mi ~ typeconc, random = ~1|day, data = daily_data_1)
summary(glht(lme_NH4_mi_2, linfct=mcp(typeconc = "Tukey")))
describeBy(daily_data_1$NH4_mi, daily_data_1$typeconc)

# NH4+ KCl extraction
lme_NH4_ex <- lme(NH4_ex ~ type*conc, random = ~1|day, data = daily_data_1)
summary(lme_NH4_ex)
anova(lme_NH4_ex)
lme_NH4_ex_2 <- lme(NH4_ex ~ typeconc, random = ~1|day, data = daily_data_1)
summary(glht(lme_NH4_ex_2, linfct=mcp(typeconc = "Tukey")))
describeBy(daily_data_1$NH4_ex, daily_data_1$typeconc)


## NO3-

# NO3- microdialysis
lme_NO3_mi <- lme(NO3_mi ~ type*conc, random = ~1|day, data = daily_data_1)
summary(lme_NO3_mi)
anova(lme_NO3_mi)
lme_NO3_mi_2 <- lme(NO3_mi ~ typeconc, random = ~1|day, data = daily_data_1)
summary(glht(lme_NO3_mi_2, linfct=mcp(typeconc = "Tukey")))
describeBy(daily_data_1$NO3_mi, daily_data_1$typeconc)

# NO3- KCl extraction
lme_NO3_ex <- lme(NO3_ex ~ type*conc, random = ~1|day, data = daily_data_1)
summary(lme_NO3_ex)
anova(lme_NO3_ex)
lme_NO3_ex_2 <- lme(NO3_ex ~ typeconc, random = ~1|day, data = daily_data_1)
summary(glht(lme_NO3_ex_2, linfct=mcp(typeconc = "Tukey")))
describeBy(daily_data_1$NO3_ex, daily_data_1$typeconc)
