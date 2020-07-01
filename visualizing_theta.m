% loading the text file 'ex1data1.txt' (this is for one variable linear regresssion).
data = load('ex1data1.txt');
% storing the values of first column in x.
x = data(:,1);
% storing the values of second column in y.
y = data(:,2);
% calculating the length of y and storing in m.
m = length(y);
% creating a matrix whose first column contains only 1 and second column is x.
X = [ones(m, 1),x];

% declaring learning rate for gradient descent.
alpha = 0.01;
% number of iterations we perform to get the least cost function.
iterations = 1500;
% declaring a 2 x 1 matrix whose elements are zero.
theta = zeros(2,1);
% storing the values of gradientDescent function in a and b.
[a,b] = gradientDescent(X, y, theta, alpha, iterations);

theta_zero = linspace(-10, 10, 100);
theta_one = linspace(-1, 4, 100);
J_vals = zeros(length(theta_zero),length(theta_one));
% starting a for loop.
for i = 1 : length(theta_zero)
  for j = 1 : length(theta_one)
    t = [theta_zero(i); theta_one(j)];
    J_vals(i,j) = computeCost(X, y, t);
  endfor
endfor
% transposing the matrix J_vals.
J_vals = J_vals';
figure; 
subplot(1,2,1);
surf(theta_zero,theta_one,J_vals)
xlabel('theta_0'),ylabel('theta_1');
title('Surface Plot');
subplot(1,2,2);
contour(theta_zero, theta_one, J_vals,logspace(-2,3,20));
title('Contour Plot');
hold on;
plot(a(1), a(2), 'rx', 'MarkerSize',10,'LineWidth',2);
theta = gradientDescent(X,y,theta,alpha,iterations);


% plotting the data and linear regression line.(same as plotData.m)
figure; 
plot(x,y,'rx','MarkerSize',10);
hold on;
plot(X,X * theta,'b');
axis([4 25 -5 25]);
legend('Training Data','Linear Regression');
xlabel('Population of City in 10,000s');
ylabel('Profit in $10,000s');
title('Population vs Profit');
