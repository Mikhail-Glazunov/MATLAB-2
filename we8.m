G=6.67e-11;
massrad=planetparameters;
tfinal=600000;
options=odeset('RelTol',1e-8);
figure
apo = 47972e3;
per = 100e3 + massrad(2);
a = (apo + per) /2;
r = apo;
v = sqrt(G*massrad(1)*(2/r - 1/a));
hold on
posvel0 = [apo;0;0;-v];
[t,posvel]=ode45('we7',[0, tfinal], posvel0, options);
plot(posvel(:,1),posvel(:,2))
axis equal
q=(0:0.01:2)*pi;
x2=massrad(2)*cos(q);
y2=massrad(2)*sin(q);
fill(x2,y2, 'red');
title('Atlas of Trajectories')
xlabel('x(m)')
ylabel('y(m)')
hold off
top=length(t);