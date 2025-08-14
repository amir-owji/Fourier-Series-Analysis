% AMIR HOSSEIN OWJI 400113010 (second code)

close  all
clear
clc

f=@(t) ( (1.* ((t>0) & (t<1))) + ((-1).*(t<0)) + ((-1).*(t>1)) ) ;
T=2;
c = @(n) (integral(@(t) ((1/(T)* exp(-1i*2*pi*n*t/T)).*f(t)),0,T));
u= -100:100;
result=@(t) 0;
for h=1:length(u)
    k=u(h);
    y= @(t) c(k).*exp(1i*k*2*pi/T*t);
    result =@(t) (result(t)+y(t));
end
t=-1:0.0001:2;
subplot (2,1,1)
plot(t,f(t))
title('original signal')
subplot (2,1,2)
plot(t,result(t),'r')
title('fourier signal')