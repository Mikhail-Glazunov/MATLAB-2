function posveldot=probeforms(t,posvel)
gravity=gravplanet(posvel);
posveldot=[posvel(3);posvel(4);gravity(1);gravity(2)];