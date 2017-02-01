function [q,r]=Dario_QuotientRemainder(a,b)
    
    %same function as QuotientRemainder, 
    %but developed by Dario instead of me
    
if b>0
    q=floor(a/b);
elseif b<0
    q=ceil(a/b);
else
    disp ('Error, b cannot be 0')
end

r=a-b*q;

if a==b*q+r
    disp ('My code works!')
else
    disp ('My code fails :(')
end