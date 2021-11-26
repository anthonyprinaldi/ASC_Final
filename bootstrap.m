function boot_res = bootstrap(sample, stat, boot_rep, monte_rep)
   boot_res = zeros(1, monte_rep);
   for j = 1:monte_rep
       boot_res(1, :) = stat_star(sample, stat, boot_rep);
   end
end