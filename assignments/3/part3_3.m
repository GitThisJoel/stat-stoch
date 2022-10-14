clear
close all

addpath("all_files")
load("eegmulti.mat")

distances = [4.2 4 3.4 3.1 2.7 2.1 1.8 1 1.5 0 4 3.4 3.5 2.4 2.5 1.3 3.2 2.1 1.2];

fs = 1 / (time(2) - time(1));

L = 256; %
NFFT = 4096;
data0 = data;

ch1 = 10;
chs = [1 5 8 10 15 19];

left = 13 * 2049/128;
right = 17 * 2049/128;

iters = length(chs);
cohers = zeros(1, iters);

for i = 1:19
    ch2 = i; %  chs(i);
    [kappa2, f] = mscohere(data0(:, ch1), data0(:, ch2), hanning(L), L / 2, NFFT, fs);

    % subplot(3, 2, i)
    % plot(f, kappa2)
    % title("ch2 = " + ch2)
    cohers(i) = mean(kappa2(left:right));
end

P = polyfit(distances, cohers, 1);
disp("lin coeff " + P(1));
disp("const coeff " + P(2));

figure();
plot(distances, cohers, '.')

R = corrcoef(cohers, distances)
