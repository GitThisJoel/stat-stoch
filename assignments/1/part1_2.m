close all
clear 

addpath("all_files") 
load data2

plot_xcov = 1

if plot_xcov
    [r, lags] = xcov(y, 20, 'biased');
    figure();
    plot(lags, r);

    [rho, lags] = xcov(y, 20, 'coeff');
    figure();
    plot(lags, rho);
end 

% Q4

k=3;
figure();
plot(y(1:end-k), y(k+1:end), '.');


% Q5