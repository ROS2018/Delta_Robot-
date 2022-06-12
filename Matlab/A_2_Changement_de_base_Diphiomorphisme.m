% Name: NADOUR
% First name: Housseyne
% Email: Housseyne.nadour@g.enp.edu.dz
% CopyRight


Az=[0 1 0
        0 0 1
         0 0 0];

Bz=[0 0 1]';

Cz=[1 0 0];

%RE,AI:
Aze=[Az [0 0 0]' 
        Cz    0    ] ;
Bze=[Bz
       0 ];
    
 % Calcule de K en imposant des poles :
 
 P = [-300 ; -350 ; -400 ; -500] ;
 K=place(Aze,Bze,P) ;
 Kw=K( : , 1:3 ) ; Ks=K(:,4);
 
