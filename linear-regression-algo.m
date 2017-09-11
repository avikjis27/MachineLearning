clear all;

data_file = csvread('./Data/Data_150.csv');
display_matrix('size of data files', data_file);# 30 * 4

X = [ones(rows(data_file),1), data_file(:, 2:end)];# Assuming the Fist column is the output
display_matrix('size of X after appending one', X);# 30 * 4

ACTUAL_OUTPUT= [data_file(:, 1)];

THETA = ones(1,columns(X));
alpha = 0.25;
printf("Initial THETA is :"), disp(THETA);
printf("alpha is :%f \n", alpha);
cost_function(X, ACTUAL_OUTPUT, THETA, alpha);
THETA = linear_regression(X, ACTUAL_OUTPUT, THETA, alpha)
printf("THETA is :"), disp(THETA);
cost_function(X, ACTUAL_OUTPUT, THETA, alpha);
THETA = linear_regression(X, ACTUAL_OUTPUT, THETA, alpha)
printf("THETA is :"), disp(THETA);
cost_function(X, ACTUAL_OUTPUT, THETA, alpha);
THETA = linear_regression(X, THETA,ACTUAL_OUTPUT, alpha)
printf("THETA is :"), disp(THETA);
cost_function(X, ACTUAL_OUTPUT, THETA, alpha);
THETA = linear_regression(X, THETA,ACTUAL_OUTPUT, alpha)
printf("THETA is :"), disp(THETA);
cost_function(X, ACTUAL_OUTPUT, THETA, alpha);


