########## X = m X n
########## Y = m X 1
########## OLD_THETA = 1 X n
########## alpha = scalar

function [NEW_THETA] =  logistic_regression(X, Y, OLD_THETA, alpha)
	
	disp('logistic regression started....');
	PREDICTED = hypothesis(X, OLD_THETA);#########1 X m
	ERROR = PREDICTED - Y;
	D_DTheta =  ERROR' * X;
	NEW_THETA = OLD_THETA - (D_DTheta .* (alpha/rows(X)));
	
endfunction
