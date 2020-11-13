eps = [0.1,0.3,0.5,0.707,0.85,1.0,3.0,6.0];
os = [72.91,37.14,16.29,4.32,0.62,0,0,0];
tp = [0.62,0.64,0.72,0.89,1.19,2.39,8.53,25.13];
mr = [5.02,1.74,1.15,1,1,1,1,1];
or = [4.95,4.53,3.53,0,0,0,0,0];
% figure
% hold on
% plot(eps,os)
% plot(eps,tp)
% hold off
% 
% figure
% hold on
% plot(eps,mr)
% plot(eps,or)
% hold off 

wn = 5;


% hold on
for idx = 1:numel(eps)
    zt = eps(idx);
    G = tf(wn^2,[1, 2*zt*wn, wn^2]);
    stepinfo(G);
    figure
    [gpeak,fpeak] = getPeakGain(G);
    bode(G)
end
% hold off




