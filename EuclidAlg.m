function Egcd=EuclidAlg(a,b)
    
%computes gcd(a,b) using Euclid'a Algoritdm
%by Dario

%optional steps
if (a==0 && b==0)
    disp ('Error, a and b cannot be both 0')
end

if a==0
    Egcd=b;
elseif b==0
    Egcd=a;
end
%/end optional steps

a=abs(a);
b=abs(b);

%dun write a=b; b=a; 
%otherwise a,b will be same value
if a<b
    temp=a;
    a=b;
    b=temp;
end

r=rem(a,b);
if r==0
    Egcd=b;
else
    while r>0
        Egcd=r;
        a=b;
        b=r;
        r=rem(a,b);
    end
end

end
