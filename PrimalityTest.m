function ptest=PrimalityTest(n)
%PLZ use natural number only!

%Test whether a natural number >1 is prime
%by Dario

%U can use {isprime(n)}
% tic; isprime(n);toc  
%to see who faster


if n==2
    ptest=1;
    disp('n is prime')
else
    ptest=1;
    for i=2:ceil(sqrt(n))
    %floor better if u fck w/ n=3
        if rem(n,i)==0
            ptest=0;
            disp('n is composite')
            break;
        end
     end
   if ptest==1
     disp('n is prime')
   end 
end 