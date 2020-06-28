function A = plotData(X, y)
  % plotData plots the data points x and y into a new figure.
  % plotData(x,y) plots the data points and gives the figure axes labels of population and profit.
  
  % =================YOUR CODE HERE===================
  % Instructions: Plot the training data into a figure using the "figure" and 
  % "plot" commands. Set the axes labels using the "xlabel" and "ylabel" commands.
  % Assume the population and revenue data have been passed in as the x and y 
  % arguments of this function.
  
  figure(1) = plo(X,y,'rx','MarkerSize',10);    % open a new figure window.
  xlabel('Population of City in 10,000s');
  ylabel('Profit in $10,000s');
  axis([4 24 -5 25]);
  legend('Training Data');

  % Hint: You can use the 'rx' option with plot to have the markers
  %       appear as red crosses. Furthermore, you can make the
  %       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

  % ============================================================

end;
