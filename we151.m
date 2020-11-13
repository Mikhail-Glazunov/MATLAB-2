% Calculating the angular velocity of spacecraft at altitude of h
R_earth = 6.371e6;
M_earth = 5.972e24;
G = 6.673e-11;
h = 100 * 1000; %altitude of spacecraft in m
R = h + R_earth;
V = sqrt(G*M_earth/R);
omega = V/R; %angular velocity of spacecraft

% tfinal sets the length of time we work out the orbit for
t = 5000;
dt = 10;
tspan=[0:dt:t];

% initial conditions for velocities and positions
position_x = 0;
position_y = 0;
v_x = 5;
v_y = 5;
initial = [position_x position_y v_x v_y];
options=odeset('AbsTol',1e-12,'RelTol',1e-8);
[t,A]=ode45(@(t,A)probeeqns(t,A,omega),tspan,initial,options);
%%
n = length(A);
for i=1:n
    theta = -A(i,1)/R;
    theta = theta - (i-1)*dt*omega;
    r = R + A(i,2);
    
    % x and y are position of the tool in space
    x(i) = r*cos(theta);
    y(i) = r*sin(theta);
    
    % xx and yy are position of the spacecraft's orbit
    theta_s = -(i-1)*dt*omega;
    xx(i) = R*cos(theta_s);
    yy(i) = R*sin(theta_s);
end

% Calculating orbit and earth positions
i = 1;
for theta=0:pi/180:2*pi
    % xe and ye are postion of the earth surface
    xe(i) = R_earth*cos(theta);
    ye(i) = R_earth*sin(theta);
    i = i + 1;
end