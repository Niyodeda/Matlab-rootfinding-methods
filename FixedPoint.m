% Course: Math*2130
% Name: Adedoyin Adelabu
% Student Number: 1196599

function [xr] = FixedPoint (f,x0,p,nmax)
 %fixed point method where f is the function, x0 is the initial guess, p is the significant figures to converge
 %and nmax is the maximum amount of iterations before terminating the loop.
xr=x0; xrold=x0;
re=1; %relative error
iter = 0;
printf("Currently running FixedPoint Method:\n")
while(re > 0.5*power(10,-p) && iter < nmax)
iter = iter+1;
xrold=xr;
xr= f(xr)+xr; %formula for fixed point method
re=abs((xr-xrold)/xr);
endwhile
fr=f(xr);

endfunction
