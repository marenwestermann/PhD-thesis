cum_data <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(6) NH4+ sorption experiment/stats/cumulative data/exp6 cum data control subtr.csv")

##separation by experiment and treatment
urea_be <- cum_data[1:16,]
urea_bc <- cum_data[c(1:4,17:28),]
pm_be <- cum_data[29:44,]
pm_bc <- cum_data[c(29:32,45:56),]

## urea, bentonite
urea_be_N2O <- aov(urea_be$N2O ~ urea_be$Treatment)
summary(urea_be_N2O)
TukeyHSD(urea_be_N2O)

## urea, biochar
urea_bc_N2O <- aov(urea_bc$N2O ~ urea_bc$Treatment)
summary(urea_bc_N2O)
TukeyHSD(urea_bc_N2O)

## poultry manure, bentonite
pm_be_N2O <- aov(pm_be$N2O ~ pm_be$Treatment)
summary(pm_be_N2O)
TukeyHSD(pm_be_N2O)

## poultry manure, biochar
pm_bc_N2O <- aov(pm_bc$N2O ~ pm_bc$Treatment)
summary(pm_bc_N2O)
TukeyHSD(pm_bc_N2O)