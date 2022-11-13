% Week - 6
% Root Finding Methods:
    % 1. Bracketing Methods:
        % - Bisection Method
        % - False Position Method
    % 2. Open Methods:
        % - Fixed Point Method
        % - Newton Raphson Method

x = linspace(0,1,100);
y = 2*x.^3+16*x.^2+43*x-10;
plot(x, y)
grid on


% build-in matlab function(fsolve)
format long
ref_sol = fsolve('2*x^3+16*x^2+43*x-10',0);
ref_sol


% Bracketing Methods
% 1. Bisection Method:


