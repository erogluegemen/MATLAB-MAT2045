
% Fixed-Point Iteration Method
function [p, Niter] = fixedpoint(g, p0, TolX, MaxIter)
%   input:     
%           g = given function 
%           p0 = the initial guess for the solution
%           TolX = tolerance for precision 
%           MaxIter = the maximum number of iterations
%
%   output:    
%           p = last approximation for the fixed point which the algorithm has reached
%           Niter = number of iterations it made to get last approximation p

if nargin~=4
    error('fixedpoint requires 4 input arguments. Try again!\n')
    return
end 

pold = p0; 
Niter = 0;

for k=1: MaxIter
    pnew = feval(g, pold);
    Niter = Niter+1;
    if abs(pnew-pold) < TolX
        break;
    end
    pold = pnew;
end

p = pnew;

if Niter == MaxIter
    fprintf('Do not rely on this, though the best in %d iterations\n', MaxIter)
end
