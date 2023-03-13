% Course: Math*2130
% Name: Adedoyin Adelabu
% Student Number: 1196599

function [A_err,T_err,c] = Bisection2 (f, a,b,err, r)
  %modified Bisection method that displays approximate and true error for each iteration,
  %Where f is your function, a and b are your intervals, err is the error threshold and r is the true root.
 fa=f(a);
  c=(a+b)/2;% bisection method formula for c
  fc= f(c);
  cprev=0;
  printf("Currently running Adjusted Bisection Method:\n")
  while(abs((c-cprev)/c) > err)
  cprev=c;
    if (fc==0);
      return
    elseif (fa*fc <0);%if function evaluated at "a" and "c" are opposite signs
      b=c;
    else
      a=c;
      fa=fc;
   endif
   c=(a+b)/2;
  A_err =abs((c-cprev)/c) %relative error formula
 T_err =abs((r-cprev)/r)
   fc= f(c);
 endwhile
endfunction
