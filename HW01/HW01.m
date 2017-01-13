clear,clc;

[~,HN] = system('hostname');
[~,UN] = system('whoami');
ver = version;
disp([UN(1:length(UN)-1) ' on ' HN(1:length(HN)-1)  ' Version ('  ver  ')'])
