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

h = (X * theta);
hyd = h - y;
theta_i = theta(2:end);
J = (hyd' * hyd + lambda * theta_i' * theta_i) / (2*m);



grad = (X' * hyd) ./ m;
grad(2:end) = grad(2:end) + lambda / m * theta_i;




% =========================================================================

grad = grad(:);

end


%!test
%! X = [1, 2; 1,3; 1,4];
%! y = [3; 5; 6];
%! theta = [1;1];
%! lambda = 0;
%! assert(linearRegCostFunction(X, y, theta, lambda) < 0.334)
%! assert(linearRegCostFunction(X, y, theta, lambda) > 0.332)