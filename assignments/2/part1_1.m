close all

C=1; a1 = 0.7;
A=[1 a1]; 

subplot(221);
zplane(C,A);

subplot(222);
sigma = 10;
[H,w]=freqz(sigma*C,A,1024,'whole');
R=abs(H).^2;
plot(w(1:513)/2/pi,R(1:513))
xlabel("f");

subplot(223)
r=ifft(R);
plot([0:39],r(1:40));
title("Covariance function");

% Q2: yes

sigma2=1;

n=150;
e = sqrt(sigma2)*randn(n,1);
x = filter(C, A, e);
xstat=x(51:150);
subplot(224)
plot(xstat)

