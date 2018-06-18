bentonite_1 <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(6) NH4+ sorption experiment/stats/cumulative data/bentonite_1_cum.csv")

## N2O vs. NH4_mi
cor.test(log(bentonite_1$NH4_mi), log(bentonite_1$N2O))

## N2O vs. NH4_ex
cor.test(log(bentonite_1$NH4_ex), log(bentonite_1$N2O))

## N2O vs. NO3_mi
cor.test(log(bentonite_1$NO3_mi), log(bentonite_1$N2O))

## N2O vs. NO3_ex
cor.test(log(bentonite_1$NO3_ex), log(bentonite_1$N2O))

## N2O vs. H
cor.test(log(bentonite_1$H), log(bentonite_1$N2O))

## N2O vs. bulk_d
cor.test(log(bentonite_1$bulk_d), log(bentonite_1$N2O))

## N2O vs. evap
cor.test(log(bentonite_1$evap), log(bentonite_1$N2O))