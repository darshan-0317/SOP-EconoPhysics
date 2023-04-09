T=readtable("Data/60DaysRollingDifference.csv");
% disp(T)
RollingDiff=T{2163:7636,"RollingCloseDf"};
cwt(RollingDiff,'bump')