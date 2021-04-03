% Filtre 2 p�les ou 2 z�ros (complexes)
clear
close all
clc

f=0.:.001:1;
z=exp(2*1i*pi*f);

% influence du module d'un zero (du p�le) sur la fonctiond e transfert en
% fr�quence
freq=.2 % fr�quence correspondant au p�le / z�ro

for rho=.4:.1:.9 % proximité au cercle unité
  theta1=2*pi*freq;
  theta2=-theta1; % complexe conjugué pour que le filtre soit réel
  z1=rho*exp(1i*theta1);
  z2=rho*exp(1i*theta2);
  
  Hp=ones(size(z))./abs((z-z1).*(z-z2)); % pôles
  Hz=abs((z-z1).*(z-z2)); % zéros
  
  figure(1)
  plot(f,abs(Hp));title('influence du module d''un p�le sur le module de la fonction de  transfert')
  
  hold on
  figure(2)
  plot(f,abs(Hz));title('influence du module d''un z�ro sur le module de la fonction de  transfert')
  
  hold on
end



% influence de l'argument du zero (du p�le) sur la fonctiond e transfert en
% fr�quence
rho=.8 % module du p�le / z�ro
for freq1=.1:.1:.4
  
  theta1=2*pi*freq1;
  theta2=-theta1;
  z1=rho*exp(1i*theta1);
  z2=rho*exp(1i*theta2);
  
  Hp=ones(size(z))./abs((z-z1).*(z-z2));
  Hz=abs((z-z1).*(z-z2));
  
  figure(3)
  plot(f,abs(Hp));title('influence de l''argument d''un p�le sur le module de la fonction de  transfert')
  hold on
  figure(4)
  
  plot(f,abs(Hz));title('influence de l''argument d''un z�ro sur le module de la fonction de  transfert')
  hold on
end

figure(1),legend('Rho=0.4', 'Rho=0.5', 'Rho=0.6', 'Rho=0.7', 'Rho=0.8', 'Rho=0.9') 
figure(2),legend('Rho=0.4', 'Rho=0.5', 'Rho=0.6', 'Rho=0.7', 'Rho=0.8', 'Rho=0.9') 
figure(3),legend('f=0.1', 'f=0.2', 'f=0.3', 'f=0.4') 
figure(4),legend('f=0.1', 'f=0.2', 'f=0.3', 'f=0.4') 


% Etude d'un filtre passe tout

rho=.9;% module du p�le / z�ro
theta=pi/8;%(2 pi f = pi/8 =>f= 0.25)
z1=rho*exp(1i*theta);%pour la premi�re cellule
z2=rho*exp(-1i*theta); %pour la 2eme cellule (pour obtenir un filtre r�el)

H1=(z.^(-1)-conj(z1))./(1-z1*z.^(-1));
H2=(z.^(-1)-conj(z2))./(1-z2*z.^(-1));

figure(5);
plot(f,abs(H1.*H2));
title('module de la fonction de transfert du filtre passe tout')
figure(6);
plot(f,angle(H1.*H2));
title('argument (phase) de la fonction de transfert du filtre passe tout')
