function [expected_trace, all_traces] = expected_trace(all_Q)
    all_traces = zeros(1, size(all_Q, 3));
    for i=1:size(all_Q, 3)
        all_traces(1, i) = trace(all_Q(:,:,i));
    end
    expected_trace = mean(all_traces);

end