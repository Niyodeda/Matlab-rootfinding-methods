% Course: Math*2130
% Name: Adedoyin Adelabu
% Student Number: 1196599


function [c] = Bisection (f, a,b,err)
  %Bisection method where f is the function a and b are the intervals and err is the error threshold.
  fa=f(a);
  c=(a+b)/2;% formula for bisection method
  fc= f(c);
  iter = 0;
  cprev=0;
  printf("Currently running Bisection Method:\n")
  while(abs((c-cprev)/c) > err)
    iter = iter+1;
    if (fc==0);
      return
    elseif (fa*fc <0);%if function evaluated at "a" and "c" are opposite signs
      b=c;             %set b to c;
    else
      a=c;
      fa=fc;
   endif
   c=(a+b)/2;
   fc= f(c);
 endwhile
endfunction
