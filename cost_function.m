function [cost] = cost_function(X, Y, THETA, alpha)
	disp('Calculating cost--->');
	X_THETA = X * THETA'; #34 * 1
	ERROR = X_THETA - Y; #34 * 1
	SQ_ERROR = ERROR .^ 2;
	sum_error = sum(SQ_ERROR);
	cost = sum_error / (2 * rows(X_THETA)) * alpha;
	fprintf("Cost is :%f \n", cost);
	
endfunction