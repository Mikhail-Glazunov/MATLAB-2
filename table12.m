set(0,'defaultAxesFontSize', 17);
CW1 = FFR.VarName4;
CW2 = CLCD.CW;
FUELFLOW = FFR.kgh;
KTS = FFR.kts;
SAR = FFR.nmkg;
x = (CW.^(-2.12))+0.91.*CW;
y = KTS./SAR;
gtht = (97.704.*CW2.^-1)+(155.86.*CW2);
gpow = (97.704.*CW2.^(-3/2))+(155.86.*CW2.^(1/2));
g = 195.78+14.641.*(CW1.^(-2.12)+0.91.*CW1);
scatter(CW1,g,'DisplayName','g')
legend('g')
hold on
scatter(CW2,gtht,'DisplayName','gtht')
scatter(CW2,gpow,'DisplayName','gpow')
hold off