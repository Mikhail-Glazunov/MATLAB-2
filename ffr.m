set(0,'defaultAxesFontSize', 18);

HD = ((FFR.ft1 > 2400) & (FFR.ft1 < 2600));

FUELFLOW = FFR.kgh(HD);
SAR = FFR.nmkg(HD);

scatter(FUELFLOW,SAR)
