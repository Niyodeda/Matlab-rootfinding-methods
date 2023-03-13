% Course: Math*2130
% Name: Adedoyin Adelabu
% Student Number: 1196599

function [A_err,T_err,c] = Falsi2 (f,a,b,p,r)
  %modified False position method that displays approximate and true error for each iteration,
  %Where f is your function, a and b are your intervals, p is #of significant figures to converge to and r is the true root.
   fa=f(a);
   fb=f(b);
   c=b-(f(b)*(b-a))/(f(b)-f(a)); %formula for false position method
   fc=f(c);
   cprev=0;
   printf("Currently running adjusted False position Method:\n")
   while(abs((c-cprev)/c)> 10^(-p))
   cprev=c;
   if (fc==0);
     return
   elseif
     (fa*fc <0); %if function evaluated at "a" and "c" are opposite signs
     b=c;         %set b to c and evaluate the function at b
     fb=f(b);
   else %set a to c and evaluate the function at a
     a=c;
     fa=f(a);
   endif
   c=b-(f(b)*(b-a))/(f(b)-f(a));
 A_err =abs((c-cprev)/c) %relative error formula
 T_err =abs((r-cprev)/r)
   fc= f(c);
 endwhile
endfunction
