%% ======================= Part 2: Plotting =======================
fprintf('Plotting Data ...\n')
data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

% You need to return the following variables correctly 
J = 0;
iterations = 1500;
alpha = 0.01;
theta_zero = theta(1);
theta_one = theta(2);


for i = 1:iterations,
  theta = theta -((1/m) * ((X * theta) - y)' * X)' * alpha;
endfor


fprintf('With theta = [0 ; 0]\nCost computed = %f\n', J);
fprintf('Expected cost value (approx) 32.07\n');
pause;