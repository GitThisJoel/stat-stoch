close all
clear 

rhoa=0.9;
freqa=0.1;

p=[rhoa*exp(1i*2*pi*freqa) rhoa*exp(-1i*2*pi*freqa)];
A=poly(p); % should all be real

C=1;

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

% AR(4)
% p1=[rho1*exp(1i*2*pi*freq1) rho1*exp(-1i*2*pi*freq1)]
% p2=[rho2*exp(1i*2*pi*freq2) rho2*exp(-1i*2*pi*freq2)]
% A=poly([p1 p2])
