close all

addpath("all_files") 
load cellodiffA

fs = 44100;

% sound(celloA4, fs);

NFFT = 2048;
cellos = {celloA2, celloA3, celloA4};
figure();
for i = 1:3
    [R, f] = periodogram(cellos{i}, [], NFFT, fs);
    
    subplot(3,2,1+2*(i-1)); 
    plot(f, R);
    
    subplot(3,2,2+2*(i-1));
    plot(f, 10*log10(R));
    
end 
