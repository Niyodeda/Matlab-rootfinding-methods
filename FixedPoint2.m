% Course: Math*2130
% Name: Adedoyin Adelabu
% Student Number: 1196599
function [xr] = FixedPoint2 (f,x0,p,nmax)
%Modified Fixed Point method using the inverse of a function main change is with line 11.
xr=x0; xrold=x0;
re=1; %relative error
iter = 0; %iteration count
printf("Currently running FixedPoint Method:\n")
while(re > 0.5*power(10,-p) && iter < nmax)
iter = iter+1;
xrold=xr;
xr=f(xr)-xr; %fixed point inverse formula
re=abs((xr-xrold)/xr);
endwhile
fr=f(xr);
endfunction
