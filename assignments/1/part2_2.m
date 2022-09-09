close all
clear

addpath("all_files") 
load celloandflute

figure();

subplot(2,2,1);
[R, f] = perg(celloA41);
title("cello 1");

subplot(2,2,2);
[R, f] = perg(fluteA41);
title("flute 1");

subplot(2,2,3);
[R, f] = perg(celloA42);
title("cello 2");

subplot(2,2,4);
[R, f] = perg(fluteA42);
title("flute 2");

function [R, f] = perg(data)
    fs = 44100;
    NFFT = 2048;
    [R, f] = periodogram(data, [], NFFT, fs);
    % plot(f, R);
    plot(f, 10*log10(R));
end 
