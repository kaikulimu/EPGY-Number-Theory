function c = FastModularExp(b,d,n)

% FastModularExp(b,d,n) computes b^d mod n using Modular Exponentation
% Input: integers, b (base), d (power), n modulus
% Output: c = b^d mod namelengthmax

% Written by Dario Grana

c=1;
f=0;

while f<d
    f=f+1;
    c=mod(b*c,n);
end

if c==n-1
    c=-1;
end


