% Basic operations

a = 2 + 2;
b = 2 / 2;
c = 2^2;
d = 2-2;
e = 2*4;

a
b
c
d
e

1 == 1
1 ~= 2

name = 'Felipe Santana';

my_pi = pi;
display(my_pi);
display(sprintf('2 decimal PI: %0.2f', my_pi));


% Matrix
printf('\n\nMatrix\n\n');

printf("\nA is a 3x2 matrix\n");
A = [1 2 ; 3 4 ; 5 6];
A

printf("\nrow_vector is a row vector\n");
row_vector = [1 2 3]

printf("\ncolumn_vector is a column vector\n");
column_vector = [1 ; 2 ; 3]

printf("\nincrement_vector is a vector that starts in 1 and increments by 0.1 until it gets 2\n");
increment_vector = 1 : 0.1 : 2
another_increment_vector = 1 : 6

printf("\n ones(m, n) function create a matrix MxN with the number one\n");
my_ones = ones(2, 3)
my_twos = 2 * ones(2,3)

printf("\n zeros(m, n) function create a matrix MxN with the number zero\n");
my_zeros = zeros(2, 3)

printf("\nrandom matrix with numbers between 0 <= X <= 1\n");
my_random = rand(4, 4)

printf("\nrandom matrix with numbers in a gaussian distribution\n");
my_gaussian = randn(4, 4)

printf("\nA more complex function and displaying its chart\n");
w = -6 + sqrt(10) * (randn(1, 1000));
hist(w);

printf("\nIdentity Matrix\n");
eye(6)