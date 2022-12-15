function[p,fp,Niter]= newton(f,df,p0,TolX,MaxIter)

if nargin ~= 5 
    error('newton requires 5 input arguments. Try again!\n')
    return
end

p = p0; Niter = 0;

for k=1: MaxIter
    fp = feval(f,p); 
    dfdx = feval(df,p);
    dp = -fp/dfdx;
    p = p+dp;
    Niter = Niter+1;
    if abs(dp) < TolX
        break;
    end
end 
if Niter == MaxIter
    fprintf('Do not rely on this, though the best in %d iterations\n',MaxIter) 
end

f = inline('2*x^3+16*x^2+43*x-10','x')
df = inline('6*x^2+32*x+43','x')

[sol_nw,fsol_nw,niter_nw]=newton(f,df,p0,TolX,MaxIter);

niter_nw
sol_nw

err_nw = abs(ref_sol-sol_nw)
