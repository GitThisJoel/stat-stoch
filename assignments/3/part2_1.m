clear
close all 

addpath("all_files");
load("sunspotdata")

subplot(121)
data = dataold - mean(dataold);
X=fft(data);
N=length(data);
Rhat=(X.*conj(X))/N;
f=[0:N-1]; %/N;
plot(f,Rhat)
title("old")

subplot(122)
data = datanew - mean(datanew);
X=fft(data);
N=length(data);
Rhat=(X.*conj(X))/N;
f=[0:N-1]/N;
plot(f,Rhat)
title("new")

% Q5: they are the same

% Q7: