% AMIR HOSSEIN OWJI 400113010

close all 
clear
clc

t = 0 : 0.001 : pi;
d = 0 : 0.001 : pi;
T=(pi-0)/2;
m=100; %#ok 
p = 1;

f= @(t) cos(3*t) + (sin(t)/2); % input signal 
x=f(t);
X=f(d);

for m = [1 2 3 4 5 10 20 100] 

    c = Signal_coefficients(x, m);
    k = 1;
    Xs = zeros(size(d)); % Fourier series synthesis signal 

    for i = -m:m

        Xs = Xs + c(k) * exp(i*1j*pi*d/T);
        k = k + 1;
        
    end 
    
    %figure 
    subplot(4,4,p)
    p = p + 8;
    plot( d, Xs, d, x ,'g' )
    title (m)
    subplot(4,4,p)
    p= p - 7 ;
    plot( d, X-Xs ,'r')
    title('difference', m)
   
end % end of first for

disp('The coefficients of the Fourier series are stored in the variable c')
disp ('original signal is blue and fourier signal is green')

%% This function calculates the coefficients of the Fourier series

function c = Signal_coefficients( x , N )

t = 0 : 0.001 : pi;
domain=(pi-0)/2;
c = zeros(N+1,1); 
k = 1;

for i = -N:N

    c(k) = 1 / 2 / domain * trapz(x .* exp(-i*1j*pi*t/domain)) * 0.001; 
    % we ese trapz to calculate the integral faster
    k = k+1;
    
end % end of for

end % end of function 
