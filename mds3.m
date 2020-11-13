pw = [0:0.1:100]*j;



Gp = 1./((pw+2).*(pw+3));

plot(Gp)
grid on
axis equal

G = zpk([],[-2,-3],1);

nyquist(G)
bode(G)
w=logspace(-2,3);
[re,im]=nyquist(G,w);
re = re(:);
im = im(:);

