function [sin_x, cos_x] = sincos(x, N)
    
  
    sin_x = 0;
    cos_x = 0;
    
    for n = 0:N
        
        cos_term = negterm(n) * taylorterm(n, 0) * x^(2*n);
        cos_x = cos_x + cos_term;
        
        
        sin_term = negterm(n) * taylorterm(n, 1) * x^(2*n+1);
        sin_x = sin_x + sin_term;
    end
end
