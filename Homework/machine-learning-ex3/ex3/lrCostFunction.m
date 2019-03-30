function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Hint: The computation of the cost function and gradients can be
%       efficiently vectorized. For example, consider the computation
%
%           sigmoid(X * theta)
%
%       Each row of the resulting matrix will contain the value of the
%       prediction for that example. You can make use of this to vectorize
%       the cost function and gradient computations. 
%
% Hint: When computing the gradient of the regularized cost function, 
%       there're many possible vectorized solutions, but one solution
%       looks like:
%           grad = (unregularized gradient for logistic regression)
%           temp = theta; 
%           temp(1) = 0;   % because we don't add anything for j = 0  
%           grad = grad + YOUR_CODE_HERE (using the temp variable)
%

% Wrong code=================================================================================
% I haven't found the wrong place yet
%h_function = sigmoid(X * theta);
%J = sum(( (-y) .* log(h_function)-(1-y) .* log(1 - h_function))) / m ; % Calculate the J of nonregulation cost funciton

% Make the adjust matrix to avid the theta0

%adjust_theta = theta;
%adjust_theta(1) = 0;

% Make the adjust matrix to avid the theta0

%J = J + sum(adjust_theta .^2) * lambda /( 2 * m ); % Calculate the regulation cost function

%h_y_sub = h_function - y;
%normal_grad = sum(h_y_sub .* X) ./ m ;
%grad = normal_grad .+ ((adjust_theta' .* lambda) ./ m); 

% Wrong code=================================================================================

without0 = theta(2:size(theta));

h = sigmoid(X * theta);
J = (1/m) * ((-y') * log(h) - (1-y)' * log(1-h)) + lambda/(2*m) * sum(without0.^2);
temp = ones(size(theta),1);
temp(1,1) = 0;
grad = (X' * (h-y) + lambda.*theta.*temp) ./ m;

% =============================================================

end
