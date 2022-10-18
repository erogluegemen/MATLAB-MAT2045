% Week - 2
pwd % current working directory
clear % clears memory
clc % clears command window

% ! the .asv file is an autosave file created
% by MathWorks MATLAB.

row_vector = [1 2 3]
column_vector = [1;2;3]
square_matrix = [1 2 3; 4 5 6; 7 8 9]

size(row_vector)
[m1, n1] = size(row_vector)
[m2, n2] = size(square_matrix)

save storage m1 n1 m2 n2 % saves the values of m1,n1,m2,n2 in 'storage.mat' file
clear m2 % clears the memory of m2
load storage m2 % loads the value of m2 from file 'storage.mat' file


% ------ I/O Functions ------ %
age = input('enter your age: ');
name = input('enter your name: ','s');

formats = 46*ones(1,4);
txt = sprintf('%d %f %e %X', formats)

x = 2.2500
fprintf('x=%e\n',x)
fprintf('x=%5.2f\n', x)

% --------------------------- %
vector = 1:5 % generate numbers between the numbers with incerement 1.
vector_2 = 0:0.3:1 % generate numbers between 0 and 1 with 0.3 incerement.

linspace(0,1,6) % generates n points between 0 and 1.
% ----- Math Functions ------ %
% cos(x), sin(x), exp(x), abs(x), sqrt(x), log(x), round(x)
a=5; x=2; y=8;
F = exp(-a)*sin(x)+10*sqrt(y)

A = 0:pi/5:2*pi
B = sin(A)

even_num = 0:2:10
sqr_even_num = even_num.^2
% ----- Element-wise Functions ------ %
% - to do element-wise op, use dot.
% - both dim. must match(unless one is scalar)

array1 = [1 4 7]
array2 = [2 5 8]
array1.*array2

mat1 = [1 2;3 4;5 6]
transpose(mat1) % way 1
mat1' % way 2
mat1.' % way 3

