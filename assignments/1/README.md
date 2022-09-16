# Assignment 1

## Q1

They could be from the same process, have similar charactersitics(?)

The process do not seem to have a zero mean.

## Q2

None of them seems to have it since 0 is not within the confidence interval.

## Q3

The new mean is: `dataX - mX` for `X` = 1,2,3. Expected value is now 0.

## Q4

From `help xcov` we have:

```
'biased' - scales the raw cross-covariance by 1/M
'normalized' or 'coeff' - normalizes the sequence so that the 
                	  covariances at zero lag are identically 1.0
```

The relation between correlation (rho) and covariance (C) is:

```
rho[X,Y] = C[X,Y] / sqrt(V[X]*V[Y])
```

## Q5 

Correlation between points separated with k (= 1,2,3).

## Q6 

```
t=n/fs;

t = time vector
n = samples [0,1,2,...,N]
fs = sample frequency
```

## Q7

I guess?

## Q8

The peaks from the periodogram correlates to f1 resp. f2.

The relation to the covar func: 

## Q9

We have random generated amplitude `A1` and `A2`.

## Q10

Log scales shows other freqs as well, not only the strongest ones.

## Q11

## Q12 

Number of harmonics, cellos have more than the flute.

## Q13 

Yes, the first melody starts of with a deeper note, witch is also reflected in the spectrogram.
Also, the first one is increasing in pitch while the second one is decreasing.

## Q14

Yes, seen in the spectrogram.

## Q15 

Cannot really hear the differance between the two...

In the spectrogram we see that the decimated one do not really have any notes above 2.5 kHz.

The decimated one have a lowpass filter that the aliased one. 
We also note that there is not any value above ~2.75 kHz, this is because we sample with afrequency of 44100/8 ~= 5500 Hz. 
Which means that the highest frequency we can sample is 2.75 kHz, WHICH THM?

## Q16 

No.
