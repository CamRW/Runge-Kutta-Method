% Subroutine to check the difference between y1 and y2 and change h and t
% based on the tolerance provided from the Runge-Kutta subroutine
% 
% INPUTS: t1 = interval point in [a,b] 
%	  y = Value to approximate using Runge-Kutta methods
%	  h1 = step size
%	  e = tolerance of error
%
%
% OUTPUTS: t = changed or unchanged t based on the tolerance check
%	   h = updated h based on the tolerance check
%	   y = updated y based on tolerance check
%

  function [t,h,y] = RKE1(t1,y,h1,e)

  format long;

% Tolerance is built from a Taylor Series difference


    y1 = RKS1(t1,y,h1);
    y_mid = RKS1(t1,y,h1/2);
    y2 = RKS1(t1+h1/2,y_mid,h1/2);


    while (abs(y1-y2) > 15.*abs(h1)*e)

    	h1 = .8.*(((15.*abs(h1).*e)/(abs(y1-y2))).^(1/4)).*h1;


    	y1 = RKS1(t1,y,h1);
    	y_mid = RKS1(t1,y,h1/2);
    	y2 = RKS1(t1+h1/2,y_mid,h1/2);


    end
    
    t = t1+h1;
    h1 = .8.*(((15.*abs(h1).*e)/(abs(y1-y2))).^(1/4)).*h1;

    h = h1;
    y = y2;
  
 end
