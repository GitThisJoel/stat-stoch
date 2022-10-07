clear
close all

load("sunspotdata.mat")

NFFT = 8192;

subplot(121)
data0 = dataold - mean(dataold);
X = fft(data0, NFFT);

N = length(data0);
Rhat = (X .* conj(X)) / N;
f = [0:NFFT - 1] / NFFT;
plot(f, Rhat)
xlim([0 0.15])
title("old")

subplot(122)
data0 = datanew - mean(datanew);
X = fft(data0, NFFT);

N = length(data0);
Rhat = (X .* conj(X)) / N;
f = [0:NFFT - 1] / NFFT;
plot(f, Rhat)
xlim([0 0.15])
title("new")

% period
fs = 12;
f_peak = 0.007202;
T = 1 / fs / f_peak; % ~= 12
