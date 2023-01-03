% Week - 8
% -------------- Vectors ----------------

v = [1 2 3]
w = [4 7 2]

v + w
v - w
3 * v

c = [1; 2; 3]

c*w
c*v

w'  % transpose

w'*v

v.*w  % dot product

a = 1:5
b = 6:10

a.*b

a./b

a.^2

a = ones(1,7)
b = zeros(4,1)

r = [1:2:6, -1:-2:-7]
t = r(3:6)
st = sort(t)
max(t)
min(t)
norm(t,inf)  % maximum norm of a vector

% -------------- Matrices ----------------
A = [5 7 9;1 -3 -7]
B = [-1 2 5;9 0 5]
c = [0 1; 3 -2; 4 2]

A + B
A - B
2*A
A'
size(A)

D = [1:5;6:10;11:2:20]
Z = zeros(2,3)
P = ones(2,3)
I = eye(3)
x = [8;-4;1]

I*x
c
I*c
A*I

d= [-3 4 2];
D = diag(d)

% Example: Solve in Matlab  the system of equations
% x2 + x3 = 2
% 2x1 - x2 - x3 = 0
% x1 + x2 - x3 = 1

A = [0 1 1; 2 -1 -1; 1 1 -1]
b = [2;0;1]

x = inv(A)*b
y = A\b
