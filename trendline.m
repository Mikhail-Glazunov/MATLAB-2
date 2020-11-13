HD = ((FFR.ft1 > 6400) & (FFR.ft1 < 6600));
MASS = FFR.kg(HD);
KG1 = ((FFR.kg(HD) > 6000) & (FFR.kg(HD) < 6250));
KG2 = ((FFR.kg(HD) > 6700) & (FFR.kg(HD) < 6900));
KG3 = ((FFR.kg(HD) > 6250) & (FFR.kg(HD) < 6700));
SAR = FFR.nmkg(HD);
CW = FFR.VarName4(HD);
SAR1 = FFR.nmkg(KG1);
CW1 = FFR.VarName4(KG1);
SAR2 = FFR.nmkg(KG2);
CW2 = FFR.VarName4(KG2);
SAR3 = FFR.nmkg(KG3);
CW3 = FFR.VarName4(KG3);

lmm = fitlm(SAR,CW);
lmm2 = fitlm(SAR1,CW1);
lmm3 = fitlm(SAR2,CW2);
hold on
plot(lmm)
% plot(lmm2)
% plot(lmm3)
scatter(SAR3,CW3)
scatter(SAR1,CW1)
scatter(SAR2,CW2)
hold off