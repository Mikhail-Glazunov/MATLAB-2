
zt = 0.45;
wn = 1.8;
G=tf(wn^2,[1, 2*zt*wn , wn ^2]);
pole(G);

stepinfo(G);
p = [0.2,0.5,1.0,3.0,10.0,1000.0];
os = [0,0,0.13,16.44,20.16,20.52];
tp = [34.0,14.64,6.94,2.36,2.04,1.93];
figure
hold on
for idx = 1:numel(p)
    pz = p(idx);
    G1 = tf(pz,[1,pz]);
    G2 = G1*G;
    step(G2)
    stepinfo(G2)
end
hold off
% set(gca, 'XScale', 'log')
figure 
hold on 
plot(p,os)
plot(p,tp)
hold off
