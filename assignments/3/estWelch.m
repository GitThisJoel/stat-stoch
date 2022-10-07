clear

e = randn(500,1);

fs = 100; 
NFFT = 4096;

n = 10; 
L = round(2*length(e)/(n+1));

sum = 0;
iters = 1000;
for i=1:iters
    Rhate=periodogram(e,[],NFFT);
    Rhatew=pwelch(e,hanning(L),round(L/2),NFFT);
    sum = sum + var(Rhate)/var(Rhatew);
    e = randn(500,1);
end 
sum / iters
% estimate: 10.3061
