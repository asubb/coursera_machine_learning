#theta1 = [1, 2.1, 1.3; 1 , 0.6, -1.2];
#theta2 = [1, 4.5, 3.1];
theta1 = [1 , 0.6, -1.2; 1, 2.1, 1.3];
theta2 = [1, 3.1, 4.5];

x = [1; 1; 1];

a2 = sigmoid(theta1 * x);
a2_ = [1; a2];

h = sigmoid (theta2 * a2_)


