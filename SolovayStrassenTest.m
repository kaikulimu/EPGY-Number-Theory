function sstest = SolovayStrassenTest(n)
    
    % SolovayStrassen primality testing
    % This function tests if an integer is prime or not
    % by using Euler's theorem
    
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
            js = jacobi(x, n);
            c = FastModularExp(x,(n-1)/2,n);
            if (js==0 ||  c ~= js)
                disp('n is composite')
                sstest=0;
                break;
            end
        end
        if (sstest==1)
            disp('n is probably prime')
        end
    end


