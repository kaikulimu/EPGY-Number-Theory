function [factors,powers]= FacrtorizeInt(n)
    
%computes the prime factorization of n
%by Dario

ff=[];  %define "ff" as empty factor

if isprime(n)==1
    disp 'n is prime'
    factors=[1,n];
    powers=[1,1];
else
    m=n;
    for  i=2:m/2
        if isprime(i)==1
            while rem(n,i)==0
                ff=[ff i];  %nice trick
                n=n/i;
            end
        end
    end

factors=unique(ff);  %partial result

for i=1:length(factors)  %length good
    powers(i)=sum(ff==factors(i)); 
    %partial result
end
end

    