close all
clear 

addpath("all_files")
load("speechdata.mat");

cutoff=4000;
b=fir1(100,cutoff/fs*2);
[H,w]=freqz(b);

datafilt=filter(b,1,data);

datasub=datafilt(13321:14280);

x=decimate(datasub,6);
fsdec=fs/6;

for ptest=1:80
    [arp,sigma2p(ptest)] = arcov(x,ptest);
end

n=length(x);
ptvect=[1:80];
FPE=sigma2p.*(n+ptvect+1)./(n-ptvect-1);
plot([1:80],FPE)