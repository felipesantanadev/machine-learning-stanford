A = [1 2 ; 3 4 ; 5 6];
B = [11 12 ; 13 14 ; 15 16];
C = [1 1 ; 2 2];

printf("\n Multiply matrixes \n");
% A * B

printf("\n Multiply each element of matrix A with their correcponded element of matrix B \n");
A .* B

printf("\n Get a matrix with each Element of A squared \n");

A .^ 2

printf("\n Get a matrix with the Element of A squared by the Element of B \n");
A .^ B

v = [1 6 3 4 5.5]
printf("\n Divide 1 by each element of the vector v \n");
1 ./ v

printf("\n Divide 1 by each element of the matrix A \n");
1 ./ A

printf("\n Get the logaritmun of each element of the vector v \n");
log(v)

printf("\n Get the absolute value of the vector [-1, -2, 3]\n");
abs([-1 ; -2 ; 3])

printf("\n Get the negative of a vector or matrix \n");
-A

printf("\n Adding +2 in each element of the vector v \n");
v + 2

printf("\n Using A' to get the transpose matrix of A \n");
A'

printf("\n Getting the max value of v \n");
val = max(v)

printf("\n Getting the max value of v and its index \n");
[val, index] = max(v)

printf("\n Comparing each element of the vector v to check if wich are less than 3 \n");
v < 3

printf("\n Sum all elements of v \n");
sum(v)

printf("\n Multiply all elements of v \n");
prod(v)

printf("\n Get the max value of each row in the matrix A \n");
max(A, [], 1)

printf("\n Get the max value of each column in the matrix A \n");
max(A, [], 2)

printf("\n Get the inverse matrix A \n");
pinv(A)