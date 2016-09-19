% Subroutine to check the difference between w1 and w2 and change h and t
% based on the tolerance provided from the Runge-Kutta subroutine
% 
% INPUTS: t1 = interval point in [a,b] 
%	  y =  value to run Runge-Kutta approximation methods
%	  h1 = step size
%	  e = tolerance of error
%
%
% OUTPUTS: t = changed or unchanged t based on the tolerance check
%	   h = updated h based on the tolerance check
%	   w = updated Runge-Kutta value
%

  function [t,h,w] = RKE2(t1,y,h1,e)

  format long;

% Tolerance is built from a Taylor Series difference


    w1 = RKS1(t1,y,h1);
    w2 = RKF(t1,y,h1);


    while (abs(w1-w2) > 15.*abs(h1)*e)

    	h1 = .8.*(((15.*abs(h1).*e)/(abs(w1-w2))).^(1/4)).*h1;


    	w1 = RKS1(t1,y,h1);
	w2 = RKF(t1,y,h1);

    end
    
    t = t1+h1;
    h1 = .8.*(((15.*abs(h1).*e)/(abs(w1-w2))).^(1/4)).*h1;

    h = h1;
    w = w2;
  
 end
