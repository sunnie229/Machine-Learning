function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

    
for iter = 1:num_iters
    residue = zeros(2,1);
    h = X*theta;
    for i =1:m
            residue(1) = residue(1) + (h(i) - y(i))*X(i,1);
            residue(2) = residue(2) + (h(i) - y(i))*X(i,2);
    end
          
        theta(1) = theta(1) - alpha/m*residue(1);
        theta(2) = theta(2) - alpha/m*residue(2);
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
