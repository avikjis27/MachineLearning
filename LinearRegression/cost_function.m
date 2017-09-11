########## X = m X n
########## Y = m X 1
########## THETA = 1 X n
########## alpha = scalar


function [cost] = cost_function(X, Y, THETA, alpha)
	disp('Calculating cost--->');
	X_THETA = X * THETA'; ## m X 1
	ERROR = X_THETA - Y; ## m X 1
	SQ_ERROR = ERROR .^ 2; ## m X 1
	sum_error = sum(SQ_ERROR);## scalar
	cost = sum_error / (2 * rows(X)) * alpha;
	fprintf("Cost is :%f \n", cost);
	
endfunction
