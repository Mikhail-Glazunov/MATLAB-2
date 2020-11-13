
HD = ((FFR.ft1 > 6400) & (FFR.ft1 < 6600));
MASS = FFR.kg(HD);
mhatplus = mean(MASS) + 50;
mhatminus = mean(MASS) - 50;
HDEE = ((FFR.kg(HD) > mhatminus) & (FFR.kg(HD) < mhatplus));
FUELFLOW = FFR.kgh(HDEE);
SAR = FFR.nmkg(HDEE);
CW = FFR.VarName4(HDEE);


KTS = FFR.kts(HDEE);
mhat = mean(MASS);

minffr = FFR.kgh(HD) <= min(FUELFLOW);
maxsar = FFR.nmkg(HD) >= max(SAR);



XK=[FUELFLOW,SAR];


x=(CW.^(-2.12))+0.91.*CW;
y=KTS./SAR;

xhat = mean(x);
yhat = mean(y);

lmm = fitlm(x,y)

plot(lmm)

g = beta0 +beta1.*(CW.^(-2.12)+0.91.*CW);

h = 1:279;


lenny = length(FUELFLOW);


%sxx = sum(x.^2-lenny*xhat^2);

sxx = sum((x-xhat).^2)

%sxy = sum(x.*y-lenny*xhat*yhat);

sxy = sum((x-xhat).*(y-yhat))

%syy = sum(y.^2-lenny*yhat^2);

syy = sum((y-yhat).^2)

beta1=sxy/sxx

beta0=yhat-beta1*xhat

delta = (syy-beta1-sxy)/(lenny-2)

sse = syy-beta1*sxy

r = 1 - (sse/syy)

fmin = min(FFR.kgh(HD))
sarax = max(FFR.nmkg(HD))


% cwbe = FFR.VarName4(fmin)


