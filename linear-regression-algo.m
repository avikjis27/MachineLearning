clear all;

data_file = csvread('./Data/auto_insurance.csv');
display_matrix('size of data files', data_file);# 30 * 4

X = [ones(rows(data_file),1), data_file(:, 2:end)];# Assuming the Fist column is the output
display_matrix('size of X after appending one', X);# 30 * 4

ACTUAL_OUTPUT= [data_file(:, 1)];

THETA = ones(1,columns(X));
alpha = 0.00001;
printf("Initial THETA is :"), disp(THETA);
printf("alpha is :%f \n", alpha);
#cost_function(X, ACTUAL_OUTPUT, THETA, alpha);
#THETA = linear_regression(X, ACTUAL_OUTPUT, THETA, alpha);
#printf("THETA is :"), disp(THETA);
#cost_function(X, ACTUAL_OUTPUT, THETA, alpha);
costs = [];

for i = 1:300
	fprintf("Iteration ---------------%d\n",i);
  	THETA = linear_regression(X, ACTUAL_OUTPUT, THETA, alpha);
	printf("THETA is :"), disp(THETA);
	costs(end+1)= cost_function(X, ACTUAL_OUTPUT, THETA, alpha);

endfor

plot(costs);
