G=6.67e-11;
au=1.496e11;
massrad=planetparameters;
MurcuryDist=0.39*au;
VenusDist=0.723*au;
EarthDist=au;
CeresDist=2.8*au;
JupiterDist=5.203*au;
UranusDist=19.18*au;
NeptuneDist=30.06*au;
options=odeset('RelTol',1e-8);
%PlanetOrder=[EarthDist,CeresDist,JupiterDist,UranusDist,NeptuneDist,MurcuryDist,VenusDist,EarthDist];
%PlanetOrder=[EarthDist,VenusDist,MurcuryDist,CeresDist,JupiterDist,UranusDist,NeptuneDist,EarthDist];
%PlanetOrder=[EarthDist,CeresDist,JupiterDist,UranusDist,NeptuneDist,VenusDist,MurcuryDist,EarthDist];
PlanetOrder=[EarthDist,VenusDist,MurcuryDist,EarthDist,CeresDist,JupiterDist,UranusDist,NeptuneDist,EarthDist];



x=[];
figure
n=length(PlanetOrder);
for i=1:(n-1)
    StartingPlanet=PlanetOrder(i);
    a = (PlanetOrder(i+1) + StartingPlanet) /2;
    v =sqrt(G*massrad(1)*(2/StartingPlanet - 1/a));
    tfinal=(sqrt(((4*pi^2)/(G*massrad(1)))*a^3))/2;
    x=[x,tfinal];
    hold on
    posvel0 = [StartingPlanet*(-1)^(i-1);0;0;v];
    [t,posvel]=ode45('probeforms',[0, tfinal], posvel0, options);
    plot(posvel(:,1),posvel(:,2),'k');
end

axis equal
ang=(0:0.01:2)*pi;
xmercury=MurcuryDist*cos(ang);
ymercury=MurcuryDist*sin(ang);
xvenus=VenusDist*cos(ang);
yvenus=VenusDist*sin(ang);
xearth=EarthDist*cos(ang);
yearth=EarthDist*sin(ang);
xceres=CeresDist*cos(ang);
yceres=CeresDist*sin(ang);
xjupiter=JupiterDist*cos(ang);
yjupiter=JupiterDist*sin(ang);
xuranus=UranusDist*cos(ang);
yuranus=UranusDist*sin(ang);
xnepturne=NeptuneDist*cos(ang);
yneptune=NeptuneDist*sin(ang);

plot(xmercury,ymercury,xvenus,yvenus,xearth,yearth...
,xceres,yceres,xjupiter,yjupiter,xuranus,yuranus,xnepturne,yneptune)

title('Probe tour plot')
xlabel('x(m)')
ylabel('y(m)')
hold off
totaltime=sum(x)

