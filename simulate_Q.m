function all_Q = simulate_Q(Q0, N)
    shape = size(Q0);
    if inv(Q0) ~= transpose(Q0)
       error("Initial Q matrix is not orthogonal");
    elseif shape(1) ~= shape(2)
        error("Matrix is not square")
    end
    m = shape(1);
    all_Q = zeros(m, m, N);
    all_Q(:, :, 1) = Q0;
    for iter = 2:N
        E = eye(m);
        theta = 2 * pi * rand(1);
        i = randsample(1:m,1);
        j = randsample(setdiff(1:m, i), 1);
        E(i,i) = cos(theta);
        E(i,j) = sin(theta);
        E(j,i) = - sin(theta);
        E(j,j) = cos(theta);
        L = randsample([i,j], 1);
        K = E;
        K(L, :) = K(L, :) .* randsample([1,-1],1);
        
        
        all_Q(:, :, iter) = K * all_Q(:, :, iter-1);
    end

    
    
    
    
