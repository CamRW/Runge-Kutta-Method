%% External f function for the stuff

function [WS] = externalf(t,y)

	ws = (-1./25).*(t-2).^3.*(y.^2);

	WS = ws;

end
