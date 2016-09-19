% Applies one iteration of Runge-Kutta order four with step-size h


  function [y] = RKS1(t,y,h)

    K1 = h*externalf(t,y);
    K2 = h*externalf(t+h/2,y+K1/2);
    K3 = h*externalf(t+h/2,y+K2/2);
    K4 = h*externalf(t+h,y+K3);

    y = y + (K1+2*K2+2*K3+K4)/6;

  end
