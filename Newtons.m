% Course: Math*2130
% Name: Adedoyin Adelabu
% Student Number: 1196599

function [xr] = Newtons (f,df,x0,p,nmax)
 %newtons method for non symbolic functions where f is the main function df is the derivative
 %x0 is the initial guess, p is the significant figures until convergeance and nmax is the maximum amount of iterations before the while loop terminates
xr=x0;
xrold=x0;
re=1; %relative error
iter = 0;
printf("Currently running Newtons Method:\n")
while(abs(re) >= 0.5*power(10,-p) && iter < nmax) %loob condition error threshold and iteration count

iter = iter+1;
xrold=xr;
xr= xr-f(xr)/df(xr); %formula for newtons method
re=abs((xr-xrold)/xr);
endwhile
fr=f(xr);
endfunction
