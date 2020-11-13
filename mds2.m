% syms t
% 
% f(t) =  3*exp(-2*t)*sin(4*t);
% ezplot(f,[0,4]), axis tight
% df = diff(f,t);
% hold on, ezplot(df,[0,4]), axis tight
% df=simplify(df);
% pretty(df);
% F = laplace(f);
% syms s
% dfi = ilaplace(s*F);

num = [3,5,10,40];
den = [1,16,69,94,40];
G= tf(num,den);
% 
% Gzpk = zpk(G);
% 
% G1 = tf([1],[1,3])
% G2 = tf([2],[1,3])
% G3 = G1*G2
% G4 = G1+G2

[r,p,k] = residue(num,den);
[p,z] = pzmap(G);

step(G);

impulse(G);

t=[0:0.01:1];
step(G,t)

[y,t] = step(G);
plot(t,y);

t = [0:0.01:10];
u = 0*t;
u(1:100) = 1;
u(101:200) = -1;
plot(t,u)
lsim(G,u,t)

Gss = ss(G);
Gtf = tf(Gss);

A = [0,1;-1,-1];
B = [0;1];
C = [1,0];
D = 0;


SYS = ss(A,B,C,D)

SYStf = tf(SYS)

x0=[randn(1,1);randn(1,1)]

initial(SYS,x0)

