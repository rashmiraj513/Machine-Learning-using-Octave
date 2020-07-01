function A = plotData(X, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.
data = load('ex1data1.txt');
% storing the values of first column in x.
x = data(:,1);
% storing the values of second column in y.
y = data(:,2);
% calculating the length of y and storing in m.
m = length(y);
% creating a matrix whose first column contains only 1 and second column is x.
X = [ones(m, 1) x];
theta = zeros(2,1);
alpha = 0.01;
iterations = 1500;
theta = gradientDescent(X,y,theta,alpha,iterations);

figure;       % open a new figure window.
plot(x,y,'rx','MarkerSize',10); 
hold on;
plot(x,X * theta,'b');
legend('Training Data','Linear Regression');
axis([4 25 -5 25]);
title('Population vs Profit');
xlabel('Population of City in 10,000s');
ylabel('Profit in $10,000s');

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the training data into a figure using the 
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the 
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

% ============================================================

end;
