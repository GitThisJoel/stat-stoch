close all
clear

addpath("all_files");
load cellomelody

melSpectrogram(melody2,fs);

% NFFT = 2048;
% FI=[0:NFFT/2]/NFFT*fs;
% [fb,cf]=designAuditoryFilterBank(fs,"FFTLength",NFFT,"NumBands",32);
% plot(FI,fb)