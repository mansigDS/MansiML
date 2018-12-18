function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

mDa= 1/m;
ho = X*theta;
Olen = length(theta);

J = 0.5*mDa*(ho - y)'* (ho - y) + (0.5*mDa*lambda) * (theta(2:Olen))' * theta(2:Olen);

thetao = theta;
thetao(1) = 0;

grad = (mDa*(ho - y)'* X) +lambda*mDa*thetao';

% =========================================================================

grad = grad(:);

end
