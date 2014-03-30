function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
        
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
        J_history(iter) = computeCost(X, y, theta);

        n = 2;
        derivativeJ = zeros(n, 1);
        for j = 1 : n
                %s = 0;
                %for i = 1 : m
	        %        h = theta' * X(i, :)';
                %        s = s + (h - y(i)) * X(i, j);
                %endfor
                %derivativeJ(j) = s;
                h = theta' * X';
                derivativeJ(j) = (h' - y)' * X(:,j);
        endfor
        
        
        
	theta = theta - (alpha / m * derivativeJ);

	
	% if J increases instead of decreasing then decrease the alpha
	if (iter > 1)
	        J = computeCost(X, y, theta);
        	diffJ = J - J_history(iter - 1);
        	if (diffJ > 0)
		        alpha = alpha / 3
	endif
	




    % ============================================================

    % Save the cost J in every iteration    

end

end
