close all
clear 

addpath("all_files") 
load data2

subplot(1,3,1);
[r, lags] = xcov(y, 20, 'biased');
plot(lags, r);

subplot(1,3,2);
[rho, lags] = xcov(y, 20, 'coeff');
plot(lags, rho);

% Q4

k=2;
subplot(1,3,3);
plot(y(1:end-k), y(k+1:end), '.');


% Q5