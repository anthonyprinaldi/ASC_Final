function all_stats = stat_star(sample, statistic, rep)
    all_stats = zeros(1, rep);
    for i = 1:rep
        all_stats(1, i) = statistic(datasample(sample, length(sample)));
    end
end