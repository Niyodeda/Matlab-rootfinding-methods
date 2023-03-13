% Course: Math*2130
% Name: Adedoyin Adelabu
% Student Number: 1196599

function [x2] = Secant (f,x0,x1,p,nmax)
 %Secant method where f is your function x0 and x1 are your initial guesses,
 %p is the amount of significant figures to converge to and nmax is the maximum amount of iterations in the while loop
f0=f(x0);
f1=f(x1);
f2=f1;
f2prev=0;
iter = 0;
printf("Currently running Secant Method:\n")
while(abs((f2-f2prev)/f2) >= 0.5*power(10,-p) && iter<nmax)
f2prev=f2;
iter = iter+1;
  x2=x1-f1*(x1-x0)/(f1-f0); %formula for secant method for root
  x0=x1;
  x1=x2;
  f0=f1;
  f2=f(x2);
  f1=f2;
endwhile
endfunction
