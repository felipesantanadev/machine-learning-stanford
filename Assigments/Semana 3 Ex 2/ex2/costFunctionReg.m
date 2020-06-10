function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
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


hypothesis = sigmoid(X*theta);
theta_1_to_n = theta(2: length(theta)); % We got theta_1 to theta_n, instead of theta_0 to theta_n because in regularization we cant penalize the theta_0

regularization = (lambda/(2*m)) * sum(theta_1_to_n' * theta_1_to_n);

[J, grad] = costFunction(theta, X, y);

J = ((1 / m) * sum( -y'*log(hypothesis) - (1-y)'*log( 1 - hypothesis))) + regularization;

thetaZero = theta;
thetaZero(1) = 0;

%grad = zeros(size(theta));
%grad(1) = (1/m) * sum(X' * (hypothesis-y));
%grad(2: length(grad)) = (1/m) * sum(X' * (hypothesis-y)) + (lambda/m) * theta_1_to_n;

grad = ((1 / m) * (hypothesis - y)' * X) + lambda / m * thetaZero';

% =============================================================

end
