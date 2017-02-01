function sstest = FermatTest(n)
    
    % Fermat primality testing
    % This function tests if an integer is prime or not
    % by using Fermat's little theorem
    
    if (n==2)
        disp('n is prime')
        sstest=1;
    elseif (rem(n,2)==0)
        disp('n is composite (n is even)');
        sstest = 0;
    else
        k=100;
        sstest=1;
        for i=1:k
            x = randi([2, n-1], 1);
            c = FastModularExp(x,(n-1),n);
            if (c ~= 1 )
                disp('n is composite')
                sstest=0;
                break;
            end
        end
        if (sstest==1)
            disp('n is probably prime')
        end
    end


