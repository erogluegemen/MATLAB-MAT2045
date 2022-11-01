% Week - 5
% if not installed:
% install 'Symbolic Math Toolbox'


% Taylor Series Expansion
syms x  % defines a symbolic variable x
f = exp(x);  % defines the function f(x)=e^x

P = taylor(f,x,'ExpansionPoint',0,'Order',6);
% gives 5’th order Taylor polynomial for f(x) around x=0

format long
x = 0.5;
y = exp(x);  % calculates f(0.5) = e^0.5

z = subs(P);
z = double(z);  % calculates P(0.5)
abs(y-z)
% the actual error in approximation of f(0.5) by 𝑃(0.5)


