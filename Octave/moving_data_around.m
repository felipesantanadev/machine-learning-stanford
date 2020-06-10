printf("\n Getting the matrix size \n")
A = [1 2 ; 3 4 ; 4 6]
size(A)
size(A, 1)
size(A, 2)

length(A)

printf("\n Getting the vector size \n")
v = [1 2 3 4 5 6]
length(v)

printf("\n Loading data \n")
features = load('featuresX.dat');
pricesY = load('pricesY.dat');

whos % show the variables in the context
% clear variable_name command remove the specific variable from the context

features
features(1:3)

pricesY
pricesY(2:4)

% We can save a new data set
y = pricesY(1:3)
save 'hello_save.mat' y

% Save as ASCII
save 'hello_save.txt' y -ascii;

% Specific element in matrix
printf("\n Specific element in matrix \n");
A(2,2)
A(2, :) % The term ":" means every element in that row/column
A(: ,2)

printf("\n The A([1 3], :) get all columns from the row 1 and 3 \n");
A([1 3], :)

printf("\n Replacing all row from the column 2 of matrix A with the command A(:, 2) = [10, 11, 12] \n");
A(:, 2) = [10, 11, 12]

printf("\n Appending another column vector to the right with the command A = [A, [100 ; 101 ; 102]] \n");
A = [A, [100 ; 101 ; 102]]

printf("\n Puttung all elements of matrix A in a single vector with the command A(:) \n");
A(:)

printf("\n Concat matrixes on the right \n");
B = [222 333 444 ; 555 666 777 ; 888 999 101]
C = [A B]

printf("\n Concat matrixes on the bottom \n");
C = [A ; B]