% Name: NADOUR
% First name: Housseyne
% Email: Housseyne.nadour@g.enp.edu.dz
% CopyRight


%longueurs
l1 = 0.19992; 
l2 = 0.334; 
r = 0.126; 
phi2 = 2*pi/3;
phi3 = 4*pi/3;
Tehta=[0,0,0]';
% Les Matrices de passage :
A2=[cos(phi2) sin(phi2) 0
    -sin(phi2) cos(phi2) 0
    0            0      1 ]; 
A3=[cos(phi3) sin(phi3) 0
    -sin(phi3) cos(phi3) 0
    0            0      1 ];

% --------------- Les Bras--------------------- :
    % Les Masses :
    
    mBras=0.083660682814532691 ;
    mArbre = 0.16142587829103891 ;
    mRoue = 0.18683757837603343 ;
    % correction de mRoue :
    mRoue =0.1805 ;
    % Les Moments en Kg/mm2:
    JPoulie=3.9114548424794062 ;
    JMoteur = 0.28215800130110358+37 ;
    JBras = (58.869490365843639^2*mBras +  403.40932548973865) ;
    JArbre= 3.8558397558486068 ;
    JRoue =  (34.455938923136898^2*mRoue +  691.62079308943987) ;
    M1= mBras + mArbre + mRoue ;  
    J1 = JPoulie*6^2 + JMoteur*12^2 + JBras+JArbre+JRoue ; % Kg.mm^2
% --------------- Les Bares paralleles ----------:
    M2=2*0.01438  ;
    J2 = 2*274996.13;

%---------------- La nacelle -----------------------:
   M31 =0.03891 ;  M32 = 0.00267 ; 
   M3= M31+M32 ;
%=================================
J1=0.0071126;
M2=2*0.01438  ;
J2 = 2*0.00027499613;
M3 = 0.0416 ;
% Le couple du pignion,moteur et poulie rapportees au arbre
JB =  ((0.28215800130110358 + 37)*12^2 + JPoulie*6^2 ) *10^-6;
% shift = 0.0651 red  ; z0= -0.08789 m ;
%shift=0 ==> z0=-0.07302 m

%% \\\\\\\\\\\\\\\\ Parametres Moteur//////////////////
R=1.35 ; % ohm
L = 1.2*10^-3 ;%H
Ke = 12.5*60/1000/(2*pi) ; %= 0.1194 V /(rad/sec)
b1 = -R/L ;
b2 = -Ke/L ;
b3 = 1/L ;
%%
Ki =0.119 ; %N-m/A 
b1 = -1.1250e+03 ;
b2 = -99.4718 ;
b3 =833.3333 ;

%% %%%%%%%%%%%%% Le 4 eme degree %%%%%%%%%%%%%%%%%%

J4 = 0.000037 ; %Kgm2
p1=-30 ;
Kp=-2*p1*J4 ;
Kd=p1^2*J4 ;

%% Trujecoir ENP %%
angle = 2*pi/8 ; R=0.25 ;
X= [0;0;0;0;0;0;0;0] ;
Y= [0;0;0;0;0;0;0;0] ;
for i=0:1:7
    X(i+1) = R*cos(i*angle) ;
    Y(i+1) = R*sin(i*angle) ;
end

%% Les parametres mecanique _Clavel :
mA=0.07604 ; %Kg
Ibras=236.06398 ; %Kg.mm^2 
mC=0.00564 ; %Kg
IA = (JPoulie*6^2 + JMoteur*12^2 + Ibras+JArbre+JRoue) *10^-6 ;