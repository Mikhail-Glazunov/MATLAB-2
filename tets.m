
Omega=[1 2];
zeta=[0:0.1:1];
axis equal
for i=1:2
    for z=1:11  
         G(i*z)=tf([Omega(i)^2],[1 2*zeta(z)*Omega(i) Omega(i)^2]);
         pzplot(G(i*z));
         title(['Zeta =' num2str(zeta(z)) 'and Omega=' num2str(Omega(i))])
         hold on
    end
end
hold off