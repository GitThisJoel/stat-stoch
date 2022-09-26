close all 
clear 

addpath("all_files");
load("speechdata.mat");

% sound(data, fs);

cutoff=4000;
b=fir1(100,cutoff/fs*2);
[H,w]=freqz(b);

datafilt=filter(b,1,data);

datasub=datafilt(13321:14280);
plot(datasub)

% Q10 
% fs = 48000, size(datasub) = 960 1
% time = 1/fs * size(datasub, 1) = 0.02 s = 20 ms
% 
% kind of looks statitonary, but mean is not zero

p=1;
x=datasub;
[arp,sigma2] = arcov(x,p);

n = 10;
nfft = 1024;
Rx=abs(fft(x,nfft).^2)/n; %Periodogram
[H,w] = freqz(1,arp,nfft,"whole");
Rxar = sigma2*abs(H).^2; %AR-spectrum
f=w/2/pi*fs;
plot(f,10*log10(Rx),"b",f,10*log10(Rxar),"r");
% plot(f,Rx,"b",f,Rxar,"r");
legend("Periodogram","AR-model");

% Q11
% freqs present in the sound file? 
% i guess?

