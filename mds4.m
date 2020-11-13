% t=[0:0.01:4];
% f=3* exp(-2*t).*sin (4*t);
% plot(t,f)
% tk = [0:0.5:4];
% fk = 3*exp(-2*tk).*sin(4*tk);
% hold on
% stem(tk,fk)
% stairs(tk,fk,'r')

% G = tf(12,[1,4,20])
% hold on
% impulse(G)
% Gd = c2d(G,0.5,'impulse')
% [yd,td] = impulse(Gd,4)
% stem(td,yd,'c')
% figure
% step(G)
% hold on
% [yd,td] = step(Gd,4)
% stairs(td,yd,'r')
% 
% Gdz=c2d(G,0.5 ,'zoh')
% [yd ,td]= step(Gdz ,4)
% stairs(td ,yd ,'c')

syms z t 
fz = ztrans(3*exp(-2*t)*sin(4*t))
k = [0:0.1:10];
kz = (3.*k.*exp(2).*sin(4))./(exp(4).*k.^2 - 2.*cos(4).*exp(2).*k + 1);


plot(kz,k)
title('Fz Plot')
