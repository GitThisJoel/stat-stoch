clear
close all

addpath("all_files")
load("eegmulti.mat")
% data, time, channels

fs = 1 / (time(2) - time(1));

o1ind = 9;
o2ind = 10;
o1 = zeromean(data(:, o1ind));
o2 = zeromean(data(:, o2ind));

data = o1;

L = 256; % = 2 * length / (n+1)
NFFT = 4096;

subplot(121)
pwelch(data, hanning(L), round(L / 2), NFFT, fs);

% number of periodograms
K = ceil(2 * length(data) / L - 1);

% multiaper
subplot(122)
NW = (K + 1) / 2;
pmtm(data, NW, NFFT, fs);

function zmdata = zeromean(data)
    zmdata = data - mean(data);
end
