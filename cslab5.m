z1 = 0.5;
p1 = 0.5;
z2 = 10.0;
p2 = 10.0;
zt = 0.45;
wn = 1.8;
G = tf(wn^2,[1, 2*zt*wn , wn ^2]);
G11 = tf(p1*[1,z1], z1*[1, p1]);
G21 = G11*G;
G12 = tf(p2*[1,z2], z2*[1, p2]);
G22 = G12*G;
figure
hold on
bode(G21)
bode(G22)
hold off
