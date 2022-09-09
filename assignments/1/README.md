# Assignment 1

## Q1

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
