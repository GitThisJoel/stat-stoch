e = randn(500,1);

A=[1 -2.39 3.35 -2.34 0.96];
C=[1 0 1];
x = filter(C, A, e);

subplot(221);
plot(x);
title("x");

fs = 100; 
tvect = (1:length(e))./fs;

subplot(222);
plot(tvect, x);
title("x sampled");

subplot(223);
NFFT = 4096;
periodogram(x,[],NFFT,fs);

subplot(224);
periodogram(x,hanning(500),NFFT,fs);
