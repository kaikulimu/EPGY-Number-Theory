function [q,r]=QuotientRemainder(a,b)
    %find a=bq+r
    
   if b>0
    q=floor(a/b);
    r=a-b*q;
    end
    
   if b<0
    q=ceil(a/b);
    r=a-b*q;
    end

    if (a==b*q+r) 
        disp('My code works!')
 end        