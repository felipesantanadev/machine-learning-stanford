A = [1 2; 3 4; 5 6];
B = [1 2 3; 4 5 6];

C = A' + B

z = 0;
for i = 1:7,
  z = z + v(i) * w(i);
end


for i = 1:7,
  for j = 1:7,
    A(i, j) = log(X(i, j));
    B(i, j) = X(i, j) ^ 2;
    C(i, j) = X(i, j) + 1;
    D(i, j) = X(i, j) / 4;
  end
end