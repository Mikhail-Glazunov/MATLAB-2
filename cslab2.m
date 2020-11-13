wn = [0.5,1.0,3.0,5.0];
zt = 0.45;
os = [20.51,20.51,20.51,20.51];
tp = [6.96,3.48,1.16,0.70];
mr = [1.24,1.24,1.24,1.24];
or = [0.39,0.77,2.32,3.87];

figure
hold on
for idx = 1:numel(wn)
    wnx = wn(idx);
    G = tf(wnx^2,[1, 2*zt*wnx, wnx^2]);
    stepinfo(G);
    [gpeak,fpeak] = getPeakGain(G)
    nyquist(G)
end
hold off

figure 
plot(wn,or)