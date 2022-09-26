close all
clear

rhoa=0.2;
freqa=0.5;

rhoc=0.7;
freqc=0.3;

A=poly([rhoa*exp(1i*2*pi*freqa) rhoa*exp(-1i*2*pi*freqa)])
C=poly([rhoc*exp(1i*2*pi*freqc) rhoc*exp(-1i*2*pi*freqc)])

sigma=0.6;
sigma2=0.4;

subplot(221);
zplane(C,A);

subplot(222);
[H,w]=freqz(sigma*C,A,1024,'whole');
R=abs(H).^2;
plot(w(1:513)/2/pi,R(1:513))
xlabel("f");

subplot(223)
r=ifft(R);
plot([0:39],r(1:40));
title("Covariance function");

n=150;
e = sqrt(sigma2)*randn(n,1);
x = filter(C, A, e);
xstat=x(51:150);
subplot(224)
plot(xstat)

figure();
plot(w(1:513)/2/pi,10*log10(R(1:513)));