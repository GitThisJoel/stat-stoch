close all
clear

addpath("all_files") 
load cellomelody

window=2048;
noverlap=1024;
NFFT=8192;

% sound(melody1);
% sound(melody2);

subplot(1,2,1);
spectrogram(melody1,window,noverlap,NFFT,fs,'yaxis');

subplot(1,2,2);
spectrogram(melody2,window,noverlap,NFFT,fs,'yaxis');
