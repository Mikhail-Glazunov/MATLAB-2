
HD = ((FFR.ft1 > 6400) & (FFR.ft1 < 6600));
MASS = FFR.kg(HD);
MASS2 = ((FFR.kg(HD) > 6000) & (FFR.kg(HD) < 6250));
MASS3 = ((FFR.kg(HD) > 6700) & (FFR.kg(HD) < 6900));
FUELFLOW = FFR.kgh(HD);
FUELFLOW1 = FFR.kgh(MASS2);
FUELFLOW2 = FFR.kgh(MASS3);
SAR = FFR.nmkg(HD);
SAR1 = FFR.nmkg(MASS2);
SAR2 = FFR.nmkg(MASS3);
CW = FFR.VarName4(HD);
CW1 = FFR.VarName4(MASS2);
CW2 = FFR.VarName4(MASS3);
KTS = FFR.kts(HD);
KTS1 = FFR.kts(MASS2);
KTS2= FFR.kts(MASS3);

x=(CW.^(-2.12))+0.91.*CW;

y=KTS./SAR;

x1=(CW1.^(-2.12))+0.91.*CW1;

y1=KTS1./SAR1;

x2=(CW2.^(-2.12))+0.91.*CW2;

y2=KTS2./SAR2;

xhat = mean(x);
yhat = mean(y);

lmm = fitlm(x,y)

lmm1 = fitlm(x1,y1)

lmm2 = fitlm(x2,y2)

hold on

plot(lmm)
plot(lmm1)
plot(lmm2)

hold off
lenny = length(FUELFLOW);

sxx = sum((x-xhat).^2)

sxy = sum((x-xhat).*(y-yhat))

syy = sum((y-yhat).^2)

beta1=sxy/sxx

beta0=yhat-beta1*xhat

delta = (syy-beta1-sxy)/(lenny-2)

sse = syy-beta1*sxy

r = 1 - (sse/syy)


