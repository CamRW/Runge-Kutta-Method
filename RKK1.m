% This subroutine loops over the interval [-10,10] and applies the subroutines
% RKE1.m to approximate the differental equation provided in externalf.m
%
% INPUTS: t = start interval t = -10 for this project 
%	  y = initial condition of the IVP
%	  h = intial step-size guess
%	  e = tolerance used to change h in RKE
%
%
%

  function [ts ys hs] = RKK1(t,y,h,e)

  format long;

  i = 1;


% This while loop will only save values of t and y that are accepted by RKE1

    while (t < 10)


	[t,h,y] = RKE1(t,y,h,e);
	


	TS(i) = t;
	YS(i) = y;
	HS(i) = h;
	i = i + 1;
    end

    ts = TS;
    ys = YS;
    hs = HS;

  end
