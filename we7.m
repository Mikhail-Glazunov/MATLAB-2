function posveldot=we7(t,posvel)
gravity=gravplanet(posvel);
massrad = planetparameters;
mass = 1;
cd = 1;
A = 0.01;
r = sqrt(posvel(1)^2+posvel(2)^2);
h = r - massrad(2);
dens=atmosphere(h);
posveldot=[posvel(3);posvel(4);...
    gravity(1)-0.5*cd*A*dens*(posvel(3).^2 + posvel(4).^2)^0.5*posvel(3)/mass;...
    gravity(2)-0.5*cd*A*dens*(posvel(3).^2 + posvel(4).^2)^0.5*posvel(4)/mass];end