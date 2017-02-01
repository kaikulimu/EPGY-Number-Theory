function [x,CongruenceClass]=VinnyLinearMod(a,b,n)
    
%It solves x in the linear congruence:
%ax===b mod n
%note that the solution x is 
%in the congruence class specified
%made by Vincent Yan @ 2012

x=0;
CongruenceClass=0;
d=gcd(a,n);

if b/d ~= floor(b/d)
    disp 'there is no solution, you noob!';
    
else a=a/d;
     b=b/d;
     n=n/d;

dd=gcd(a,b);
a=a/dd;
b=b/dd;

while a~=1
    b=b+n;
    ddd=gcd(a,b);
    a=a/ddd;
    b=b/ddd;
end

    
x=b;
CongruenceClass=n;

end 