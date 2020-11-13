G=6.67e-11;
au=1.496e11;
massrad=planetparameters;
tfinal=67550000000;
options=odeset('RelTol',1e-8);
figure
apo = 2.56*au;
per = au;
a = (apo + per) /2;
r = apo;
v = sqrt(G*massrad(1)*(2/r - 1/a));
hold on
posvel0 = [au;0;0;v];
[t,posvel]=ode45('transferqns',[0, tfinal], posvel0, options);
plot(posvel(:,1),posvel(:,2))
axis equal
q=(0:0.01:2)*pi;
x2=au*cos(q);
y2=au*sin(q);
x3=2.56*au*cos(q);
y3=2.56*au*sin(q);
plot(x2,y2,x3,y3)
title('Earth-Mercury')
xlabel('x(m)')
ylabel('y(m)')
hold off
top=length(t);
