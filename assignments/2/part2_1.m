close all 
clear 

addpath("all_files");
load("speechdata.mat");

% sound(data, fs);

cutoff=4000;
b=fir1(100,cutoff/fs*2);
[H,w]=freqz(b);

figure();
subplot(121);
plot(w/2/pi*fs,abs(H).^2)
title("Linear")
subplot(122);
plot(w/2/pi*fs,20*log10(abs(H)))
title("Log")

datafilt=filter(b,1,data);
% sound(datafilt, fs);

b=fir1(100,4000/fs*2,"high");
sound(b, fs); % can not hear anything...

% Q9
% cutoff = result
% 2000 = sound like talking from a box
% 3500 = pretty good 
% 4000 = still small trace of high freq sound 
% 8000 = high freq sound is there