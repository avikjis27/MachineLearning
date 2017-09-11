function [NEW_THETA] =  linear_regression(X, Y, OLD_THETA, alpha)
	
	disp('Calculating cost--->');
	X_THETA = X * OLD_THETA'; #34 * 1
	ERROR = X_THETA - Y; #34 * 1
	D_DTheta =  ERROR' * X
	NEW_THETA = OLD_THETA - (D_DTheta .* alpha);
	
endfunction
