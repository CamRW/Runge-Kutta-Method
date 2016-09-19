% Runge-Kutta Fehlberg Method
%
% INPUTS: t = mesh point in the interval [a,b]
%	  y = y value associated with t
%	  h1 = step size to apply RKF
%
% OUTPUTS: y = RKF approximation
%

function [y] = RKF(t,y,h1)

format long;
   
    K1 = h1*externalf(t,y);
    K2 = h1*externalf(t+h1/4,y+K1/4);
    K3 = h1*externalf(t+(3*h1)/8,y+(3/32)*K1+(9/32)*K2);
    K4 = h1*externalf(t+(12/13)*h1,y+(1932/2197)*K1-(7200/2197)*K2+(7296/2197)*K3);
    K5 = h1*externalf(t+h1,y+(439/216)*K1-8*K2+(3880/2565)*K3-(845/4104)*K4);
    K6 = h1*externalf(t+h1/2,y-(8/27)*K1+2*K2-(3544/2565)*K3+(1859/4104)*K4-(11/40)*K5);
    y2 = y + ((16/135)*K1+(6656/12825)*K3+(28561/56430)*K4-(9/50)*K5+(2/55)*K6);

end
