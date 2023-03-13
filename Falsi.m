% Course: Math*2130
% Name: Adedoyin Adelabu
% Student Number: 1196599

function [c,l] = Falsi (f,a,b,p)
  %false position method where f is your functino a and b are the intervals and p is the amount of significant figures to converge to
   fa=f(a);
   fb=f(b);
   c=b-(f(b)*(b-a))/(f(b)-f(a));%Formula for False position method
   fc=f(c);
   cprev=0;
   printf("Currently running False position Method:\n")
   while(abs((c-cprev)/c)> 10^(-p))
   cprev=c;
   if (fc==0);
     return
   elseif
     (fa*fc <0);%if function evaluated at "a" and "c" are opposite signs
     b=c;       %set b to c and evaluate the function at b
     fb=f(b);
   else
     a=c;
     fa=f(a);
   end
   c=b-(f(b)*(b-a))/(f(b)-f(a));
   fc= f(c);
 end
 l= abs(b-a); %l is the length of the interval used to find the root
 end

