z = [1000.0,10.0,3.0,1.0,0.5,0.2,-0.5,-5.0];
os = [20.52,20.88,25.56,69.04,163.31,467.55];
zp = [1000.0,10.0,3.0,1.0,0.5,0.2];
tp = [1.93,1.82,1.53,1.02,0.85,0.74];
zt = 0.45;
wn = 1.8;
G=tf(wn^2,[1, 2*zt*wn , wn ^2]);
figure
hold on
for idx = 1:numel(z)
    zz = z(idx);
    G1 = tf([1,zz],zz);
    G2 = G1*G;
    step(G2)
    stepinfo(G2)
end
figure 
hold on
plot(zp,os)
plot(zp,tp)
hold off