T=readtable("Data/180DaysRollingDifference.csv");
% disp(T)
RollingDiff=T{2163:7636,"RollingCloseDf"};
cwt(RollingDiff,'morse')