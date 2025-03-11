function s = taylorsum(x, flag, N)
    s = 0;  
    for n = 0:N
        term = negterm(n) * taylorterm(n, flag) * x^(2*n + flag); 
        s = s + term; 
    end
end
