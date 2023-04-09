T=readtable("Data/90DaysRollingDifference.csv");
% disp(T)
RollingDiff=T{2163:7636,"RollingCloseDf"};
cwt(RollingDiff,'morse')