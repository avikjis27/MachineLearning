########## X = m X n
########## Y = m X 1
########## OLD_THETA = 1 X n
########## alpha = scalar

function [NEW_THETA] =  linear_regression(X, Y, OLD_THETA, alpha)
	
	disp('linear regression started....');
	X_THETA = X * OLD_THETA'; 
	ERROR = X_THETA - Y;
	D_DTheta =  ERROR' * X
	NEW_THETA = OLD_THETA - (D_DTheta .* (alpha/rows(X)));
	
endfunction
