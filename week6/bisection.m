function [p, err, Niter] = bisection(f,a,b,Tol_p,MaxIter)
%{
Bisection Method to solve equation f(x)=0

inputs:
    f =  function to be given as a string 'f'
    a = the initial left point of the solution interval
    b = the initial right point of the solution interval
    Tol_p = tolerance for error in approximation
    MaxIter = the maximum number of iterations

outputs:
    p = last approximation of the root which the algorithm has reached
    err = upper bound of the error in the last approximation
    Niter = number of iterations it made to get last approximation p
%}

if nargin~=5
    error('bisection requires 5 input arguments. Try again!')
   
end


fa = feval(f, a); 
fb = feval(f, b); 
Niter=0;


if fa*fb>=0
  error('We must have f(a)f(b)<0. Try again!\n')
  return
end


for k=1:MaxIter
    p = (a+b)/2;
    Niter=Niter+1;
    fp = feval(f,p);
    err = (b-a)/2;
    if abs(err)<Tol_p
        break; 
    end

    if fp*fa > 0
        a = p;
        fa = fp;
    else
        b = p;
        fb = fp;
    end 
end

if Niter == MaxIter
  fprintf('Do not rely on this, though the best in%d iterations\n', MaxIter)
end


f = @(x) 2*x^3+16*x^2+43*x-10;
TolX = 1e-12;
MaxIter = 100;
a = 0; b = 1;

[sol_bs, uberr_bs, niter_bs]=bisection(f,a,b,TolX,MaxIter);

niter_bs
sol_bs
uberr_bs
err_bs=abs(ref_sol-sol_bs)







