close 
clear all 

load("eegsingle.mat")
data0 = data-mean(data);

NFFT = 8192;
X=fft(data0,NFFT);

subplot(121)
N = length(data0);
Rhat=(X.*conj(X))/N;
f=[0:NFFT-1]/NFFT;
plot(f,Rhat)
% xlim([0 0.15])
title("data")

subplot(122)
sub=16;
window=2048/sub;
noverlap=1024/sub;
NFFT=4096;
spectrogram(data0, window, noverlap, NFFT);