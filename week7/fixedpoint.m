% fixedpoint
 
function [p, Niter] = fixedpoint(g, p0, TolX, MaxIter)

if nargin~=4
    error('fixedpoint requires 4 input arguments. Try again!\n')
    return
end

pold = p0; Niter = 0; 
for k = 1:MaxIter
    pnew = feval(g, pold);
    Niter = Niter+1;
    if abs(pnew-pold)<TolX
        break;
    end
    pold = pnew;
end

p=pnew;

if Niter == MaxIter
    fprintf('Do not rely on this, though the best in %d iterations\n',MaxIter) 
end

format long
ref_sol = fsolve('2*x^3+16*x^2+43*x-10', 0)

p0 = 0.5;
TolX = 1e-12;
MaxIter = 100;

g = inline('10/(2*x^2+16*x+43)','x') % definition of function g

[sol_fp,niter_fp]=fixedpoint(g,p0,TolX,MaxIter);

niter_fp
sol_fp

err_fp = abs(ref_sol - sol_fp)

% rearrange given equation to fixed-point form X = (10-16x^2-43x)/2x^2
g = inline((10-16*x^2-43*x)/(2*x^2)','x')

[sol_fp, niter_fp]=fixedpoint(g,p0,TolX,MaxIter);  % its failed to converge



