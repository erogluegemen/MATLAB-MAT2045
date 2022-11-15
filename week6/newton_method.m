% Newton-Raphson's Method 
function [p,fp,Niter]= newton(f,df,p0,TolX,MaxIter)
%   input:     
%           f = given function 
%           df = derivative function f'
%           p0 = the initial guess of the solution
%           TolX = tolerance for precision 
%           MaxIter = the maximum number of iterations
%
%   output:   
%           p = last approximation of the root which the algorithm has reached
%           fp = function value at last approximation p
%           Niter = number of iterations it made to get last approximation p

if nargin~=5
    error('newton requires 5 input arguments. Try again!\n')
    return
end 

p = p0; 
Niter = 0; 

for k=1: MaxIter
   fp = feval(f, p); 
   dfdx= feval(df, p);
   dp = -fp/dfdx;
   p = p+dp;
   Niter = Niter+1;
   if abs(dp) < TolX
       break;
   end
end

p=pnew;

if Niter == MaxIter
  fprintf('Do not rely on this, though the best in %d iterations\n',MaxIter) 
end
