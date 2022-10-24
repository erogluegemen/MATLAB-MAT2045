
% Week - 4

% ------ Conditional Statements ------ %
if pi<3
    fprintf('pi < 3\n')
else
    fprintf('pi > 3\n')
end

% Test which number is greater pi^e or e^pi.

a = pi^exp(1);
b = exp(pi);

if a>b
    fprintf('pi^e is larger than e^pi\n')
elseif a==b
    fprintf('pi^e is equal to e^pi\n')
else 
    fprintf('pi^e is less than e^pi\n')
end

% ------ For Loops ------ %

% Calculate the sum 1^2 + 2^2 + 3^2 + 100^2
% Way 1:
S = 0;
for k=1:100
    S=S+k^2;
end
S

% Way 2:
k=1:100;
S=sum(k.^2)
S


% The fibonacci sequence is given by f1=0, f2=1
% and fn=fn-1+fn-2. Test whether the ratio fn/fn+1
% approaches the golden ratio (sqrt(5)-1)/2
F(1)=0; F(2)=1;
for n=3:20
    F(n)=F(n-1)+F(n-2)
end

for n=1:19
    RF(n)=F(n)/F(n+1);
    GL(n)=(sqrt(5)-1)/2;
end

plot(1:19, RF, '--bo')
hold on
xlabel('n')
plot(1:19, GL, '-r')

% ------ While Loops ------ %

% What is the greatest value of n that
% satisfies 1^2 + 2^2 +..+ n^2<100

S=0;
n=0;
while S+(n+1)^2<100
    n=n+1;
    S=S+n^2;
end
n

% ------ Test Part ------ %
area(-3,4,5)
area(3,4,5)
area(2,3,6)

quadratic(0,4,5)
quadratic(1,4,4)
quadratic(-1,-1,6)

% ------ Function ------ %

% Example 1: The area of the triangle with sides
% a, b and c is given by A=sqrt(u*(u-a)*(u-b)*(u-c)),
% where u = (a+b+c)/2. Write a Matlab function area
% that accepts the values a, b, c as inputs and
% returns the value of the area as output. If the
% inputs are not positive or triangle inequality
% does not hold then function should display a 
% warning message.


% Example 2: Consider quadratic equation ax^2 + bx + c = 0.
% This equation does not have real roots if delta = b^2-4ac<0.
% Equation has only one real root x = -b/2a if delta = 0.
% Write a matlab function quadratic that accepts the values a, b, c
% as inputs and calculates the real roots of quadratic equation.

% Function 1
function A = area(a,b,c)
if (a<=0)||(b<=0)||(c<=0)
    fprintf('Side of triangle should have positive length. Try again!\n')
elseif (a+b<=c)||(a+c<=b)||(b+c<=a)
    fprintf('Triangle inequality is not satisfied. Try again!\n')
else
    u=(a+b+c)/2;
    A=sqrt(u*(u-a)*(u-b)*(u-c));
end
end

% Function 2
function quadratic(a,b,c)
if a==0
    fprintf('Equation is not quadratic. Try again!\n')
    return 
end

delta=b^2-4*a*c;

if delta<0
    fprintf('Quadratic equation does not have real roots\n')
elseif delta==0
    x=-b/(2*a);
    fprintf('Quadratic equation has 1 real root x=%.5f\n',x)
else
    x1=(-b+sqrt(delta))/(2*a);
    x2=(-b-sqrt(delta))/(2*a);
    u=(a+b+c)/2;
    fprintf('Quadratic equation has two real roots x1=%.5f, x2=%.5f\n',x1,x2)
end
end





