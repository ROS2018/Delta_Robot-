% Name: NADOUR
% First name: Housseyne
% Email: Housseyne.nadour@g.enp.edu.dz
% CopyRight


%% LoopShaping

% correcuur a bien marche
s=tf('s') ;
p=-1; K= 5000 ;
G=1/(s-p)^2 ;
[ng,dg]=tfdata(G,'v');
wc=70.7;
% Correcteur:
phiM=53.38 ; 
beta=1/sind(phiM) ;
r=1/sqrt(beta^2-1);
alpha1=tand(45-phiM/2)/wc ;
C1=beta*r-r*(1-alpha1*s)/(1+alpha1*s);
margin(C1) ;
R=K*C1 ;
margin(R*G) ;
[n,d]=tfdata(R,'v');
% %  nyquist(G);
%===================
% n =
% 
%    1.0e+03 *
% 
%     0.0707    1.6546
% 
% d
% 
% d =
% 
%     0.0047    1.0000
%===================

%%%% Correcte
% s=tf('s') ;
% p=-5; K= 10000 ;
% G=1/(s-p)^2 ;
% [ng,dg]=tfdata(G,'v');
% % Correcteur:
% phiM=40 ; wc=99.9;
% beta=1/sind(phiM) ;
% r=1/sqrt(beta^2-1);
% alpha1=tand(45-phiM/2)/wc ;
% C1=beta*r-r*(1-alpha1*s)/(1+alpha1*s);
% margin(C1) ;
% R=K*C1 ;
% margin(R*G) ;
% [n,d]=tfdata(R,'v');
% % nyquist(C1)



% N'a pas marche
% s=tf('s') ;
% p=-1; K= 5000 ;
% G=1/(s-p)^2 ;
% [ng,dg]=tfdata(G,'v');
% wc=61.4;
% F=wc/(s+wc) ;
% % Correcteur:
% phiM1=100 ;
% beta=1/sind(phiM1);
% r=1/sqrt(beta^2-1);
% alpha=tand(45*3-phiM1/2)/wc ;
% C2=-beta*r-r*(1-alpha*s)/(1+alpha*s);
% %
% margin(C2) ;
% R=K*C2*F ;
% margin(R*G) ;
% [n,d]=tfdata(R,'v');
%  nyquist(R*G);