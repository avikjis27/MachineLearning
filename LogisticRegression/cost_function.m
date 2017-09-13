########## X = m X n
########## Y = m X 1
########## THETA = 1 X n
########## alpha = scalar
###        cost(hθ, (x),y) = -ylog( hθ(x) ) - (1-y)log( 1- hθ(x) ) 

function [cost] = cost_function(X, Y, THETA, alpha)
	disp('Calculating cost--->');
	HYPO = hypothesis(X, THETA);
	P = Y .* log(HYPO);## m X 1
	Q = (1-Y) .* log(1- HYPO);## m X 1
	cost = sum(P + Q)/(-1 *rows(X));
	fprintf("Cost is :%f \n", cost);	
	
endfunction
