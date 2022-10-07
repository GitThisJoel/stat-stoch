e = randn(500, 1);

A = [1 -2.39 3.35 -2.34 0.96];
C = [1 0 1];
x = filter(C, A, e);

fs = 100;
NFFT = 4096;

n = 10;
L = round(2 * length(e) / (n + 1));

subplot(221);
NFFT = 4096;
periodogram(x, [], NFFT, fs);

subplot(222);
periodogram(x, hanning(500), NFFT, fs);

subplot(223);
pwelch(x, hanning(L), round(L / 2), NFFT, fs);

% Q2: estimation -> 10, expecting 10.
