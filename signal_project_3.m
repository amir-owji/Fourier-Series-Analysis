% AMIR HOSSEIN OWJI 400113010 (third code)
close all
clear
clc

figure

p=pi;
N=1024;
dx=2*p/(N-1);
x=-p:dx:p;

f=0*x;
f(N/4:N/2) = 4*(1:N/4+1)/N;
f(N/2+1:3*N/4) = 1-4*(0:N/4-1)/N;
plot (x,f,'-k','LineWidth',3.5), hold on

z=jet(20);
A0=sum(f.*ones(size(x)))*dx/pi;
FS=A0/2;
for k=1:20
    A(k)=sum (f.*cos(pi*k*x/p))*dx/pi; %#ok
    B(k)=sum (f.*sin(pi*k*x/p))*dx/pi; %#ok
    FS= FS+ A(k)*cos(pi*k*x/p) + B(k)*sin(pi*k*x/p);
    plot(x,FS,'-','Color',z(k,:),'LineWidth',2)
    pause(0.1)
end
