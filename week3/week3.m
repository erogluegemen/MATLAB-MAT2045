% Week - 3
% -------------- Plotting ----------------
x = 1:10;
y = [12 3 4 -2 6 7 5 -4 1 0];
plot(x,y)
xlabel('months')
ylabel('average temperature')
title('monthly averages')
clf
% ! clf : clears the current figure window.

% ----------------------------------------
% Line Type:
% - (solid line)      -- (dashed line)
% : (dotted line)     -. (dash-dot line)
% ----------------------------------------
% Point Type(Marker Symbol)
% . (dot)             v (triangle down)
% ^ (triange up)      * (star)
% + (plus)            o (circle)
% x (x-mark)          s (square)
% ----------------------------------------
% Color
% r (red)             m (magenta)
% g (green)           y (yellow)
% b (blue)            c (cyan)
% k (black)
% ----------------------------------------
x1 = 0:pi/100:2*pi;
y1 = sin(x1);
plot(x1,y1)
xlabel('x (in radians)')
ylabel('y')
title('Plot of y=sin(x) functions')
grid
clf
% ----------------------------------------
x2 = linspace(0,1,11);
y2 = sin(3*pi*x2);
plot(x2,y2)
clf
% ----------------------------------------
N=100; h=1/N; x3=0:h:1;
y3 = sin(3*pi*x3);
plot(x3,y3)
clf
% ----------------------------------------
t = 0:0.01:(2*pi);
x = cos(t);
y = sin(t);
plot(t,x,'k'); hold on;
plot(t,y,'r-.'); 
axis([0 2*pi -1.5 1.5])
legend('cos(t)','sin(t)','Location','NorthEast')
clf
% ----------------------------------------
x_value = 0:pi/20:2*pi;
y_value1 = cos(x_value);
y_value2 = sin(x_value);
subplot(1,2,1);
plot(x_value,y_value1,'--^')
title('Plot of y=cos(x) function')
subplot(1,2,2);
plot(x_value, y_value2,'-rv')
title('Plot of y=sin(x) function')
clf
% ----------------------------------------
% Creating your own function
% (inline function will be removed in the future)
% f=inline('1./(1+8*x.^2)','x')
% Use:
f = @(x) 1./(1+8*x.^2);
f(1)

nums = 1:5;
f(nums) % or
feval(f,nums) % not recommended
% ----------------------------------------
% Working with Polynomials
p = [1 0 -3 2]; % p(x) = x^3-3x+2
p(1); % firs element of p
polyval(p,1) % calculate value of p(1)
polyval(p,[0 1 2])

q = [1 1 1]; % q(x) = x^2+x+1
v = [1 -1]; % v(x) = x^1-1
r = conv(q,v) % r(x)=(x-1)*( x^2+x+1)=x^3-1

result = [1 0 0 1];
divider = [1 1];
r2 = deconv(result,divider) % r(x)=(x^3+1)/(x+1)=x^2-x+1

