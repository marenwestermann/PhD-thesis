bentonite_1 <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(6) NH4+ sorption experiment/stats/cumulative data/bentonite_1_cum.csv")
biochar_1 <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(6) NH4+ sorption experiment/stats/cumulative data/biochar_1_cum.csv")
bentonite_2 <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(6) NH4+ sorption experiment/stats/cumulative data/bentonite_2_cum.csv")
biochar_2 <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(6) NH4+ sorption experiment/stats/cumulative data/biochar_2_cum.csv")

##CO2

## urea, bentonite
urea_be_CO2 <- aov(bentonite_1$CO2 ~ bentonite_1$Treatment)
summary(urea_be_CO2)
TukeyHSD(urea_be_CO2)

## urea, biochar
urea_bc_CO2 <- aov(biochar_1$CO2 ~ biochar_1$Treatment)
summary(urea_bc_CO2)
TukeyHSD(urea_bc_CO2)

## poultry manure, bentonite
pm_be_CO2 <- aov(bentonite_2$CO2 ~ bentonite_2$Treatment)
summary(pm_be_CO2)
TukeyHSD(pm_be_CO2)

## poultry manure, biochar
pm_bc_CO2 <- aov(biochar_2$CO2 ~ biochar_2$Treatment)
summary(pm_bc_CO2)
TukeyHSD(pm_bc_CO2)