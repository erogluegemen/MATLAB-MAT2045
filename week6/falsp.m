function [p, err, Niter]= falsp(f, a, b, Tol_p, MaxIter)
%{
False Position Method to solve equation f(x)=0

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
if nargin ~= 5
    error('falsp requires 5 input arguments. Try again!')
    return
end

fa = feval(f,a); 
fb = feval(f,b); 
Niter = 0;

if fa*fb >= 0
  error('We must have f(a)f(b)<0. Try again!')
  return
end

for k=1:MaxIter
    p = (a*fb-b*fa)/(fb-fa);
    Niter=Niter+1;
    fp = feval(f,p);
    err = max(abs(p-a),abs(b-p));
    if abs(err)<Tol_p
        break; 
    end
    if fp*fa>0
        a=p;
        fa=fp;
    else
        b=p;
        fb=fp;
    end
end

if Niter==MaxIter
  fprintf('Do not rely on this, though the best in %d iterations\n',MaxIter)
end

 [sol_fsp, uberr_fsp, niter_fsp]=falsp(f,a,b,TolX,MaxIter);
 niter_fsp
 sol_fsp
 uberr_fsp
 err_fsp=abs(ref_sol-sol_fsp)