HD = ((FFR.ft1 > 6400) & (FFR.ft1 < 6600));
M = ((FFR.kg(HD) > 6450) & (FFR.kg(HD) < 6550));
KTS = FFR.kts(M);
EAS = KTS.*sqrt(1.008/1.225);
FUELFLOW = FFR.kgh(M);
SAR = FFR.nmkg(M);
figure
scatter(EAS,FUELFLOW)
figure
scatter(EAS,SAR)


minffr = FFR.kgh(M) <= min(FUELFLOW);
maxsar = FFR.nmkg(M) >= max(SAR);