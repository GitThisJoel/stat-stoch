close all 
clear 

addpath("all_files");
load("speechdata.mat");

cutoff=4000;
b=fir1(100,cutoff/fs*2);
[H,w]=freqz(b);

datafilt=filter(b,1,data);

datasub=datafilt(13321:14280);

x=decimate(datasub,6);
fsdec=fs/6;

p=2;
[arp,sigma2] = arcov(x,p);

n = 140;
nfft = 1024;
Rx=abs(fft(x,nfft).^2)/n; %Periodogram
[H,w] = freqz(1,arp,nfft,"whole");
Rxar = sigma2*abs(H).^2; %AR-spectrum
f=w/2/pi*fs;
plot(f,10*log10(Rx),"b",f,10*log10(Rxar),"r");
% plot(f,Rx,"b",f,Rxar,"r");
legend("Periodogram","AR-model");



