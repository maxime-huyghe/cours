% synthese de filtres a phase lineaire par moindres carres

close all
clc

N=75;% demi longueur de la RI du filtre (demi car elle est symétrique (pair))

f=0:.001:.5; % fréquences de calcul (0<=f<=0.5)
%amp=1+sin(2*pi*(0:299)/150);amp=[amp 2*(bartlett(101)')+1 zeros(1,100)]; % module de la fn de transfert du filtre en dB(ici un passe bande)

% pti filtre passe bas pour les BASSES
amp = zeros(1, 501);
for i=1:length(amp);
  amp(i) = (length(amp) - i) / length(amp);
end;

A=zeros(length(f),N+1); % initialisation de la matrice des cosinus
A(:,1)=ones(length(f),1); % 1ere colonne (en facteur de h0) egale a 1

for i=1:length(f);
  for j=2:N+1;
    A(i,j)=2*cos(2*pi*f(i)*(j-1));
  end;
end; % Calcul de la matrice A

h=inv(A'*A)*A'*amp'; % determination de la partie k>=0 de la RI

hh=h(N:-1:2); % partie <0 de la RI
h=[hh;h];
plot(h)




%fvtool(h) % visualisation de la fn de transfert (et autres)

figure

h=[h;zeros(1000,1)];
fh=fft(h);
plot(0:1/length(h): (length(h/2)-1)/length(h), abs(fh));hold on; plot(f,amp,'r');hold off
grid

figure,
semilogx(f,20*log10(amp))
hold on
semilogx(0:1/length(h): (length(h)/2-1)/length(h), 20*log10(abs(fh(1:end/2))))
grid

% realisation du filtrage d'un chirp

x=sin(2*pi*.00025*[0:999].^2); % chirp 

fx=filter(h,1,x);
figure
plot(x);
hold on;
plot(fx,'r');

fx=filter(h,1,x);
figure
plot(x);
hold on;
plot(fx(N:end),'r');
