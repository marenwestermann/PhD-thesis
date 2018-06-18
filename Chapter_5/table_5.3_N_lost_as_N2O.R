cum_data <- read.csv("C:/Users/Maren/Dropbox/UQ PhD/PhD work/experiments/(6) NH4+ sorption experiment/stats/cumulative data/N loss as N2O.csv")

# separation by treatment
cum_data_1 <- subset(cum_data, cum_data$part =="1")
cum_data_2 <- subset(cum_data, cum_data$part =="2")

# part 1
N2O_1 <- aov(cum_data_1$N2O_loss_pc ~ cum_data_1$Treatment)
summary(N2O_1)
TukeyHSD(N2O_1)

# part 2
N2O_2 <- aov(cum_data_2$N2O_loss_pc ~ cum_data_2$Treatment)
summary(N2O_2)
TukeyHSD(N2O_2)