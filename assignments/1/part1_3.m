close all

addpath("all_files") 

run signalsim

figure();
subplot(1,2,1);
[rho, lags] = xcov(x, N, 'coeff');
plot(lags, rho);

subplot(1,2,2);
NFFT = 2048;
[R,f] = periodogram(x,[],NFFT,fs);
plot(f,R);

% subplot(1,3,3);
figure();
plot(f,10*log10(R))