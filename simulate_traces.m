function traces = simulate_traces(n_sim, dim, samples)
    traces = zeros(1, n_sim);
    parfor (i = 1:n_sim)
        current_Q = simulate_Q(eye(dim), samples);
        traces(1, i) = expected_trace(current_Q);
    end
end