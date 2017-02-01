
>> x=[]
>> for i=3:2:100
> i
> sstest=FermatTest(i);
> if sstest==1
> x=[x i];
> end
> pause(1)
> end