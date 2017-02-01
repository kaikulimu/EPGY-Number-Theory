function [pf]=primefactors(a)

pf=[1];

c=0;
d=1;

while(d<=a)
	d=d+1;
	while(a/d==floor(a/d))
		c=c+1;
		pf(c)=d;
		a=a/d;
	end
end

if(pf==[1])
    pf=[a]
    end
