set(0,'defaultAxesFontSize', 14);

a = randn(5,1) + randn(5,1)*j;

plot(a,'bx')
hold on
plot(conj(a),'rx')
angle(a);
abs(a);
abs(a).*exp(angle(a)*j) -a;
close

dp = 0.05;
thetap=[pi/2:dp:pi];
p1=[0:dp:1];
parc=[cos(thetap)+sin(thetap)*j];
p=[1+p1*j, 1-p1+j, parc, -1-p1*j, -1+p1-j, p1-j, 1+(-1+p1)*j];
fp = 1./((p+2).*(p+3));
plot(p,'b'), hold on, plot(fp,'r'), hold off
axis equal

