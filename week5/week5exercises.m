% Week - 5 

% Example 1
% Find 5-th order Taylor polynomial
% for function f(x) = ln(x) around
% point x=1.

syms x
f = log(x);
P = taylor(f,x,'ExpansionPoint',1,'Order',6);

% Example 2
% Find 4-th order, 6-th order and 8-th order
% Taylor poly for function f(x)=sin(x)/x
% around point x=0. Plot the graph of function
% f(x) and graphs of obtained Taylor poly in 
% the interval [-4,4].

clear all

syms x
f = sin(x)/x;

P4 = taylor(f,x,'ExpansionPoint',0,'Order',5);
P6= taylor(f,x,'ExpansionPoint',0,'Order',7);
P8= taylor(f,x,'ExpansionPoint',0,'Order',9);

fprintf('%s \n',P4, P6, P8)


x = -4:0.3:4;
y = sin(x)./x;
p4 = subs(P4);
plot(x,y,'-r')
hold on
plot(x,p4,'--b')
title('4-th order Taylor Polynomial Approx.')

clf 

p6 = subs(P6);
plot(x,y,'-r')
hold on
plot(x,p6,'--b')
title('6-th order Taylor Polynomial Approx.')

clf
p8=subs(P8);
plot(x,y,'-r')
hold on
plot(x,p8,'--b')
title('8-th order Taylor Polynomial Approx.')

% All-in-one
plot(x,y,'-r','LineWidth',2)
hold on
plot(x,p4,'--b','LineWidth',2)
hold on
plot(x,p6,'-.g','LineWidth',2)
hold on
plot(x,p8,':k','LineWidth',2)
legend('sin(x)/x','P4','P6','P8')
title('Taylor Polynomial Approximations')