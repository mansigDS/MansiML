function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

J = sum(((X*theta)-y).^2)/(2*m);

%def cost(X, y, theta):
%    inner = np.power(((X @ theta.T) - y), 2)
% sum(inner) / (2 * len(X))%
%J = ((sum((X*theta)-y))^2)/(2*m)
%  sum((X*theta)-y)
%  sum(((X*theta)-y).^2))
%pow = sum(((X*theta)-y).^2)/(2*m)
% =========================================================================

end
