########## X = m X n
########## Y = m X 1
########## THETA = 1 X n
########## alpha = scalar
###        cost(hθ, (x),y) = -ylog( hθ(x) ) - (1-y)log( 1- hθ(x) ) 

function [H_THETA] = hypothesis(X, THETA)
	disp('Calculating hypothesis values--->');
	temp = X * THETA'; ## m X 1
	H_THETA = 1 ./ (1 + e.^-temp);	## m X 1
endfunction
