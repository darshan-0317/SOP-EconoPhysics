T=readtable("Data/30DaysRollingDifference.csv");
% disp(T)
RollingDiff=T{2163:7636,"RollingCloseDf"};
cwt(RollingDiff,'bump')
