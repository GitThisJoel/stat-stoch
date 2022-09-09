close all
clear

addpath("all_files") 
load cellomelody

window=2048;
noverlap=1024;
NFFT=8192;

subplot(1,3,1); 
spectrogram(melody2,window,noverlap,NFFT,fs,'yaxis');
ylim([0 2.75]);
title("Melody 2")

% DEC
window=512;
noverlap=256;

subplot(1,3,2);
melody2dec=decimate(melody2,8);
spectrogram(melody2dec,window,noverlap,NFFT,fs/8,'yaxis');
ylim([0 2.75]);
title("Decimated Melody 2");

% ALIAS
subplot(1,3,3);
melody2alias=melody2(1:8:end);
spectrogram(melody2alias,window,noverlap,NFFT,fs/8,'yaxis');
ylim([0 2.75]);
title("Alias Melody 2");
