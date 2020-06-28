function J = computeCost(X, y, theta)
  
  % computeCost compute cost for linear regression.
  % J = computeCost(X, y, theta) computes the cost of using theta as the parameter
  % for linear regression to fit the data points in X and y initialize some useful
  % values.
  
  m = length(y);    % number of training examples.
  
  % You need to return the following variables correctly.
  
  J = 0;            % declaring J as 0.
  
  % ==================YOUR CODE HERE=====================
  
  % Instructions: Compute the cost of a particular choice of theta 
  % You should set J to the cost.
  
  h = X * theta;
  
  sqErrors = (h - y) .^ 2;
  
  J = 1/(2 * m) * sum(sqErrors);
  
  
  % =====================================================
  
  end;
