% Name: NADOUR
% First name: Housseyne
% Email: Housseyne.nadour@g.enp.edu.dz
% CopyRight



%% H infini Parameters


s=zpk('s');
F = 1/((s+40)*(s+50));
A=0.001; M=1; w0=25;
Ws = (s/M + w0)/(s + w0*A);
Wks = [];
Wt = (s+w0/M)/(A*s + w0);
P=augw(F,Ws,Wks,Wt);
[K,CL,GAM]=hinfsyn(P);
sigma(CL,ss(GAM));