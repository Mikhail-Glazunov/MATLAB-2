pitch = accel.A324;
ang = accel.A322;
thrust = accel.T;
eas = accel.EAS;
mass = accel.mass;
sw = 25.084;
r0 = 1.225;
g0 = 9.81;
beta = accel.beta;
vx = accel.A362;
vy = accel.A363;
h2dot = accel.A364;
delta = accel.A321;

L = mass.*g0-1000.*(thrust).*sin(pitch);
CL = (2.*L)./(r0.*sw.*(eas.^2));
D = 1000.*(thrust).*cos(pitch);
CD = (2.*D)./(r0.*sw.*(eas.^2));
figure
hold on
scatter(eas,CL)
scatter(eas,CD)
hold off

k = 1/(pi*9.24*0.6);
w = mass.*g0;
ab = pitch - ang;


vpre = (1./mass).*(thrust.*cos(ab)-(1/2).*((eas.^2).*sw.*CD.*cos(beta))-w.*sin(ang));
vi = (vx.*cos(delta)-vy.*sin(delta)).*cos(ang)+h2dot.*sin(ang);
vmea = vi.*vpre;
figure
hold on
scatter(eas,vpre)
scatter(eas,vmea)
hold off


