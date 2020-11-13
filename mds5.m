h=0.1; % stepsize (10 seconds)

kmax =101; % number of steps

t=zeros (1,kmax); % record of time

x =zeros (2,kmax); % record of state - there are 2 state variables 

k=1; % sample counter

x(:,k+1) = x(:,k) + h*A* x(:,k);
t(k+1)=t(k)+h;
k=k+1;
% 
% plot(t,x(1 ,:))
% 
% xlabel('Time (s)')
% ylabel('Position (m)')


plot(t,x(2 ,:))

xlabel('Time (s)') 
ylabel('Velocity (m/s)')

