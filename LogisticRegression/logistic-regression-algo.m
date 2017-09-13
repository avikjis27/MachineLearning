clear all;

data_file = csvread('./Data/Data.csv');
display_matrix('size of data files', data_file);# 30 * 4

X = [ones(rows(data_file),1), data_file(:, 1:end-1)];# Assuming the Fist column is the output
display_matrix('size of X after appending one', X);# 30 * 4

ACTUAL_OUTPUT= [data_file(:, end)];

THETA = zeros(1,columns(X));
alpha = 0.00001;
steps = 300;
printf("Initial THETA is :"), disp(THETA);
printf("alpha is :%f \n", alpha);
costs = [];
for i = 1:steps
	fprintf("Iteration ---------------%d\n",i);
  	THETA = logistic_regression(X, ACTUAL_OUTPUT, THETA, alpha);
	printf("Updated THETA is :"), disp(THETA);
	costs(end+1)= cost_function(X, ACTUAL_OUTPUT, THETA, alpha);

endfor

plot(costs);
