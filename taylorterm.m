function t = taylorterm(n, flag)
    
    if flag == 0
        t = 1 / fact(2 * n);
    else
        t = 1 / fact(2 * n + 1);
    end
end
